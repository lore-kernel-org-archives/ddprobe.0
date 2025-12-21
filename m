Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCC623185E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766324634; cv=none; b=OO2U+310zKMqg09bu4y8c3FlQxMFuFe673WYfvWzx8n9ANTmeQcAsyVtJ2f3GgHWZvkF6ePhe3SvCylHuw6n0Ex2R5Sc7bD49JJZX5sVMaS5aIbOUAMnYph14er70jyKa8dgxBOk8/wEIZ2Zn1fQOr+r16IykOvz6HA0XqRoRNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766324634; c=relaxed/simple;
	bh=Jt6zBlx5uHmuOXUIgHyEFj0dECCEMVvil3J00+yPT3I=;
	h=To:Subject:From:Message-Id:Date; b=dVMVAhL0RYMEnFqcnwdDMOMndZvaL2pTFphHKNbbYx3VzwC43Bsm84N4u1Tb8dHkfbN6zXdlwFSKd4pmVFa+QtpUuIu2dOKNmYJlYi9eapeQYbEChueRgcyKG2QwqeOxjykvLliroF2obuJQIl9NTaJmGNg11B9EDxBVSMDgLJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdA7O3R/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdA7O3R/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C11C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766324633;
	bh=Jt6zBlx5uHmuOXUIgHyEFj0dECCEMVvil3J00+yPT3I=;
	h=To:Subject:From:Date:From;
	b=CdA7O3R/RmxGAb9Zgf8oIbFRj7YmptaGORDjS6neJCgmXrfhYaVpYKDYcTzDTzaCO
	 dAcu0oUaoONlaFo988IIIqBfDc3mSAB5dbWTANcFhpeHm6eHvujReKNyjNPtNY18Ng
	 pfypcKtWktQkod5ZFfddhSD9jy32XtttcGUHYrjtIBb7BxkhxbnIRxUvJspbQ172eb
	 dw3dh81cp2xVeaY9p4g0kT/hHtEhOZRRi4C0k923idyHE6F4gIlF/h3QZea8iSyeUN
	 uk9xXE3XMu6sz/l4cK2NdkjjI2oJj5N54PKdO16Sbz2OWvNWdMjvIZfI8Ryf1SxQ11
	 Xgj2M0JRIOLsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F947E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632463358.32757.14999137607666509343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74d662f69c2ee2ed324496cd097d199c5ba5a633839a79da73584c3b2d366c1
Date: Sun, 21 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766324633
