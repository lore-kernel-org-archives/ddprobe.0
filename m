Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABEF1FBB
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710641897; cv=none; b=h2su5gI5PYkBOgzD+zznmQt+noICPD2alM9a1CRWdpUA0JmPIZkCnZyZDuMipUpxOPeMOVmbSjQ5qqc0VesrA1GR88Q2po8D+BgOTYpQJEU+aZlHmkeq086f4iRf/XsiGVnHH4m23S0R4CM7JyTFmUZUstJT4Wjl8iw9XS3u3Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710641897; c=relaxed/simple;
	bh=dJorZd6HgJ0e4WGtDad2AbDFkbBJ2XZRZtgqYDkar6A=;
	h=To:Subject:From:Message-Id:Date; b=nGgf7FDag/duXteA7EjEubxjiFzdRzOJtavZX5R302opF46bz+o6wsy4uz+x/05yY5NKFV/SN56OGCfpKnRiWS9f0cTe2c8srXrLa9HuVncWjEjC1BiY1fEcvqyYdAMyZ4DSR09JhZbZOn2Uc1QwooaxgXaA1j34yHVMfnScGcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9AfPIPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9AfPIPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F33AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710641896;
	bh=dJorZd6HgJ0e4WGtDad2AbDFkbBJ2XZRZtgqYDkar6A=;
	h=To:Subject:From:Date:From;
	b=T9AfPIPWjDZHpnKtzRhTvFsrs3X/k4+/91O+3p2BYc0i+AHAwcihrO220Z8bb37U6
	 zEzZknGLIwErXgNUVAWSbvNfHGh2zbrq00uwG+4Bb0RfYDSAUz5mDEAfZ+BF/zvCCX
	 vMO+GOAPGqu/tUuGjipvgWe5D9i5uxFb/VpCVk6Vn54C2nP4Rsman15LZRLuUmq19y
	 QYIlLZQjOpYo4qe7Yd68nw2GpF0lpozHE7IRRONTfbcEeG6e+NLEYGgMzfztoY2CXU
	 L/rPtMNdPG9EBt9jB7PaqoenPGqGLaMQSjW9bSqXmZZFh5yJIVEpDCbj7QE7Xrnz+g
	 Cd0kFISCRdgqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2B3C54E5D
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171064189637.22694.9360479919474654675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92237dd59231adaf0ee00a6e16bfc764f57111658fde702df4627413d68be5a4
Date: Sun, 17 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710641896
