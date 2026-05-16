Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD7A381AF
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778951434; cv=none; b=fH/UKtdn5YCAZg23WM0PTp/qr3pIVOLHDRhIvyncGq88f+nMEAfgTqANU4cruOvr1MvjPjKI4HHdVNIXWXex8ZRdrGmocIKbLgEe/ug/12WnqFT8AqRsNmx/T1pKJvOKxnJvnjZ53SXY4wb4MBHD5PKeSfPQzrKgDf+l1LD3dxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778951434; c=relaxed/simple;
	bh=LIjheWrLSYxfAOjjzg35jcd0yLcJK2mHic2EbwdqEx8=;
	h=To:Subject:From:Message-Id:Date; b=QCyAzDame+iePGUtPEmcRFUGvEh1/J0dEZJ5iyiHVXaa0XKuaYENqxnwFXGFE5GVNR9TC4Yz5lduOVFrfYw00G1DoWQNNy+ebK89IoVWn4v+5qAE35sbkNUca45oS/Gt2q2XepVXjojOSYnYIOZvcCa4D3EnW2YtTTEatTjkGkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o01w5pv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o01w5pv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE70CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778951433;
	bh=LIjheWrLSYxfAOjjzg35jcd0yLcJK2mHic2EbwdqEx8=;
	h=To:Subject:From:Date:From;
	b=o01w5pv1L33yz85GO8nkXL5k6SVxSWNNqVQmML2lcb+lhZ4QJ/GjpUF050BmGmyXA
	 wmTGUB1BFOwgTkZYo+2GGdvQDsDVDSL6TbOb+qWNSKj6IgMyoYNdDxx96pBPbQ72lY
	 pcWk2ZBcTI1XPiS0BsaLviG9vEqDYBudEaG8NFeRztqYqpyv4+7S8Nax15wkTAF1u5
	 wLlJaw0pmPaA3LcTYOyELT34dySy80tCa8dZLQxsaaGL48c4ezq67BDwEMuJ25mxc/
	 s+ZoB49UkdK1AyxD1f2HsA27gdJ8vlsoKt6iFcng/Wko1nsWZMp0rT2pHKgAfhOOdf
	 plkIxyEhzgHFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C7CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895143370.2586.773865660526395019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb35eef1b8d277a72584e4b52c449d4aa5746f4dd5e481dad0ec2b64185cf43
Date: Sat, 16 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778951433
