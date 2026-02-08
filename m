Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BA63A1C9
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770531834; cv=none; b=JDDnGi+mp+j0ZFjSvRW9vwCSvDPFYqmA9XoM1obb3tO3NyCtKaItI2d6I7EI19U9CFx/1W8BSJOMEgVpu9hhi4eOAB+JPmx5IuXZM2BKFEPFciEgrpzsOIRa+NFVu2zoDSViI9sIvGHO/4rtmOgVBdzbjylRxJTwP3c35+3YpfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770531834; c=relaxed/simple;
	bh=nOXBiuX+NuESw0ti7HwiwQ9DbPCX9EIYHHyKp5zbcSI=;
	h=To:Subject:From:Message-Id:Date; b=hxdbF5ZRtdXPJcJ2E2BCRMO2zWkgT27nrfe5upOt5BmYZn8v3YF1wtWd7xa/c/TQz1RVd/o/i6CjFRzXRagDH8p7RtX+54gQq9IzNNXmuK0LKxTKTACZoEQ0t1+w8k/kod7leDHlMci7kH1crBIJdPVLF1G2SatvRt7lWJqbBlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoywA2c8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoywA2c8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE596C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770531833;
	bh=nOXBiuX+NuESw0ti7HwiwQ9DbPCX9EIYHHyKp5zbcSI=;
	h=To:Subject:From:Date:From;
	b=NoywA2c8tlY1rOFRlqqWfNB/Zy9UAXxKyq5KJBOtyJUhBOjLQCX2FuKLmcmniOPy5
	 tLJifVZtEBxGRI3qBx02SfvZLRYCDhGqrm/0qZb3bJgnX2bCqBHXoK4nE/VNNCnfrt
	 uZDMCURf2Vu9P6HBN+mvKhHBh8SBbIxt1xagQfh6IoycrPKFF7yHraY6GKGBIS0/s0
	 /N2IXMstAaFLRpGurV76JIMVt2hdXr6Cb+gh3NTy2kxaw/smQQUAO5TuAQrFIA4inz
	 R5BcC25staVSd/OmEtkY8CL5xq8hshjHEWx2B3FAf19oDA1vTTqzMX1mffWuVypUfa
	 LzbRn+ht/o4sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500DEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053183360.23049.4053650946869868751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66aa8d197ad9df6eed5bae8ce10953f3a2936f972d400999160d704c3865b298
Date: Sun, 08 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770531833
