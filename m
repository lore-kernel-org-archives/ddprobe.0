Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E13E1ADC9B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737659754; cv=none; b=R4aJsf4HM7l80WY6g+HYROLhD56QAlcYYvuMIkSJA9kjXbA3kzM7ih1imyL+OuW5TuTxnq5JQff+9lDY4PW2ASqA8b0zux0V2rW2jcXlyQA4i4qK53KNxtK5Aucd92Olv7aiDzVbn6PGhVeDqPXGWRdBKz62bxlOMj8XydK3I5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737659754; c=relaxed/simple;
	bh=zEQRgxluXjLL1LQjnQKlKMVxME8C5Ztj1zrHEvE3Wtk=;
	h=To:Subject:From:Message-Id:Date; b=gt+C/X2eW59P+W0bVc38RQgnnMP3eZ+AAui1WuCy415nRQQGVNOoPvh5h/Lx/BajkJDQsrJ563W7O+A1xtv3ue6Rk1f03QRSTQ6sb1zpUbYIf/x7jei67PjBze3D0N4Ael4lQ1S08MLN0QGdZn1VYkJu0w4nJA/sIUwi1036hbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXeyaNdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXeyaNdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF06C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737659753;
	bh=zEQRgxluXjLL1LQjnQKlKMVxME8C5Ztj1zrHEvE3Wtk=;
	h=To:Subject:From:Date:From;
	b=tXeyaNdj2F2qei3TV5eN40U1tOY21yZS2xDp/qtpSwc59q5BlWn+EI+r3hkHIYE2Z
	 t0o5DQb7LO+n2v5bGIpdB7PW37HvgiuZ676SUiv+Iv7fFkBIUeImwUMeyONDMz+epT
	 B3gxmiY5f2rVtBcnQRmkqOcq451Rn6QTAmRsDvOpBgw0z3UfvF4ioW1nED+bXFat1z
	 saEtznR0zc58MdRjeTGFmSGXjD4n3OCRCNDdud2TXC0WucyGtMwtBDQofrSC6/GrYg
	 4jvlmwWky0etJ/5HXdSgJsT+4QwSGXYxaHPTstsTs+vOq8pZleR5lPTvwN4DjgNmiS
	 U439NXsKjpqNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12E9C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765975364.22103.4559581399582058107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24762a4d00465d0a630116d4779dc657533871f1c6557436968ada15420979a
Date: Thu, 23 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737659753
