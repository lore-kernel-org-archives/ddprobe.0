Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8031E43AAD
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713325163; cv=none; b=PSgB8SjiImP3TFydo1BhQfmfreHtK6rTo6TQ4+YiTeUjldJ2jh0B0Dhcd2CSL6g/TEYXz2tjSdij5ZNXZaQUGWG0XlcPwDpYDPAwzgFzCvAy5yra24mK05cyr8fQCoQwlLPSjDvHdy93z8vsgc0dY893EQ1LJZnIr7TxcNnQumY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713325163; c=relaxed/simple;
	bh=+ZjUlDpDR9rDCOHtWtcHi2ySy1BepUnti+3A1c1fDrs=;
	h=To:Subject:From:Message-Id:Date; b=l0lJT/BHlb8x/cHBzYq+gdMKKsX8By0gBtWlnMbKhOr5oE0zVPiG3NTVlrGcYO6vhcLQVqD2DF7f36bXCIFfBSLZ2jtgWql1TGrnYWH0W7zEsubO1Ir0EscJTnxz7/hNPnv167HbVs2aO6zOnTIoeMolxzGqmceES9lCRJnfSZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp4DRFX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp4DRFX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F50BC113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713325163;
	bh=+ZjUlDpDR9rDCOHtWtcHi2ySy1BepUnti+3A1c1fDrs=;
	h=To:Subject:From:Date:From;
	b=Hp4DRFX92/C2hiinTJ8rQKS7n/eo7Ds/4dUS3XuEanx2GtTBIlUHKKkWqyBRfPpbW
	 HJLMJXjSdZY0ZOfRgA+sR1+V7MXHA52YK7nKGZ69G5laAbF8rzvII9WnPrI9+DQSAb
	 hXfzg1HJz3k2FGrBgVcUm7d8gIKPIhTTl85cWeuIG29+PuR5j3XKgBPzbb+GlW8G4f
	 0O1+hV7xLEs1hptr0WfMxiDdQHICQvq6eYarJJvFn7vXEwizA6JMZEYJP92e+2g4k9
	 kUJ1qct0IpABzRKDTS1daRzZkl6lF1MH4+CGymAWdorwVkfHiyKwmUjQFmzFNEJ/ts
	 G5ylZqCbbiBmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1576C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332516289.2850.16766260849042337515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d8c02ad87788ba99759079b763432dba8f7d095d688ab49a87e1ec681123be
Date: Wed, 17 Apr 2024 03:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713325162
