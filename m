Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307D22046BA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767212034; cv=none; b=JsvWCh7qjrrKgtzPTTYW6DK1t6erXUxx8Eos2paXp2SFLAnlNKQDf27FIpzjQQ9Ccq4lVBe5l5SAhJPxdf3ByTO6bPj7JJmjXJAQ3TSI02vzQZVfvRCd5dDMfkh6khZEbFwIaE2VrwRXVrt/ANFF6uxWVZVKTLIGspjDNiHKMBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767212034; c=relaxed/simple;
	bh=X99ck1M6uW7fD+LDFFRSu5hfioy0ZYYt8KuViVfNIoE=;
	h=To:Subject:From:Message-Id:Date; b=r9wB6DGHKhjLx0yXAnKFT1XtS/pULV2a4j1Wi5hxX7/qBdP9QUmfGJ+MClfqxPBX/CxUxNVXQ2Q7XSEBKQ3ApG8bButJzDlLvwVUCAeM068d+qkEt8bZZBBJKCVtvxwQew4skeOSsYfbfoTGN43OW4yRXw6kIFdtYlMtbnlf2Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCzCSyz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCzCSyz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A5DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767212033;
	bh=X99ck1M6uW7fD+LDFFRSu5hfioy0ZYYt8KuViVfNIoE=;
	h=To:Subject:From:Date:From;
	b=YCzCSyz/oyYotgeQtaIai0TE6s6yYUEUiaKsEOXeDhTBz2DvXiXXvQWT2TaWAJmPK
	 7A7Grlw7CQr2k0Mda0WMV2rLPDQuK988S5XSHr++ZXQGXdfuSJZkdJS6snHjXTb4or
	 iTWRwF9DehxyWbk0lAumINFWRJ/0WC4nslD68G8IXkhWhTCB46Nm45ivGJBnyXoMhC
	 s+c/UhXYljV2YT50TENXC2gpINdk2wF9Dl0N3CWcoWyXZ2u1UYH9RBAwY4OkTNRcRk
	 eCLv3TWalXMB2OvVx/wnLGRSesyCMlRwonVQXB+yI+XwJZ+1VXDgKDIH2JsZX/YDG6
	 SuogMHUk5i0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B0EE57C5
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721203358.19688.1857915944253406439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e88b032cc3470bf866520d5af73024d8e3bd1f1756961ba574f2c256c4f64b5
Date: Wed, 31 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767212033
