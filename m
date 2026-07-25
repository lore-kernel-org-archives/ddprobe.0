Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4832DCF74
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784961634; cv=none; b=DpUWxMH8qFMxC17oCEA57KTrZ1clyhfI7RCfUDGwmUUwg08xWKIOhFhHqcvqSD8U7Xn240haME1AlFZ6mv7JXMMSpCKNlNQA47HcWUHIF++mKpnZ0tGnEiSt3VbiXXR77x0sYZH9qonOenQpeZcXmGvb3DTMrXyivadqfoGg8Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784961634; c=relaxed/simple;
	bh=veOoEApVmyeI5LZVWLUfwKQMJnjDA7rPPtsCr1hj/i8=;
	h=To:Subject:From:Message-Id:Date; b=EyERcRodWw55l9t0narj1Z1/yEf+eoobvGPEUKXYnXjZtcUjJwBi4ETKPhTWqJVO0JKSfs60WMcORKjKv9VmISTV3KWfSX07+S9VFSaT5OvEa/8VWgoZj/iikpOySWQKLTXK9o8SbEkpNdHhTcQOUGJgbkrhNV+p1O+XDzt2Zoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUXvTR89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUXvTR89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB705C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784961633;
	bh=veOoEApVmyeI5LZVWLUfwKQMJnjDA7rPPtsCr1hj/i8=;
	h=To:Subject:From:Date:From;
	b=XUXvTR898yAZOGsc9s6vhvcgUjJjRoltlqw+Tmik31lylbJ2s5rsYkgpbbDXgMWwX
	 22WmOCb6k2AS3N67Bn2t0d8CbvWiCLCPlVJiq/0s2rYGbycLuhuU9BLrsB1uSaP4iy
	 NTKFzXo8ZmfNZllIR/DveEOAVYgfn4OyKBOM3KBT3cjaoRgHAfArFgKAvXL/edJ0sR
	 Uo8Z7CQPdExjgowU3Iv8ShTB8zmJascQ+DlzSW6/SUbv9HuI0OUcOBE2Ca8KSWDMIb
	 n9pYU/10XSrA36fWElmUTLw+NX41/eET/Gwj6MCfpFdXbFp45Cswseaqkgg7Atj5qg
	 IlfGty1XCzOEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA92C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496163368.16514.15272067338437944285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49b5e8e8ec6df7a119ccf247eb2c43a1da77f1c85c36b480aa817ff512af22a
Date: Sat, 25 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784961633
