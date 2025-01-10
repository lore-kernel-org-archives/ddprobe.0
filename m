Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AEE211297
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736523353; cv=none; b=dgxuO48/cXPtvpFFFp/Cz4Uj+8uyeJ/nuYqInwNUi7AS1bfsJbnYj4TiNPxFmQUwjJ4RpEP6+NNQsuwJCY9LpV7FmrDEJD8dbiL9VgVBXPFdPnHLJu30d7xY7JtGHD2J9Vk5nXPNS2hQaiX3y3F+obvWPRMXCLLh2krPNZtSLi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736523353; c=relaxed/simple;
	bh=Ooi/BtbuLV0y6IY3IjghV+I3pXHRY/HKEia2hic8AjE=;
	h=To:Subject:From:Message-Id:Date; b=F9nMlRhRoDhNkqQdLENdt1UKnhsiA0Vtb4ySpvDsGVxmANUWJD/NY/VVMBJnLB/dT4f4SAS+wEuevwZnQ0ZlffMdPVtpCAKyZn30lRBxCSAxlbW74+26lXkV0SMq1dPuTddy1tljGOeYcJRAHkuK/mCjqL78iVwA69Kp+VdD588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Edc4EMoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Edc4EMoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C5EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736523353;
	bh=Ooi/BtbuLV0y6IY3IjghV+I3pXHRY/HKEia2hic8AjE=;
	h=To:Subject:From:Date:From;
	b=Edc4EMoziomxylr1dPceqrY88I8EVLWpv8Fvy5gtdW8X2fLTKMOI3zUXNCH+D6wiX
	 BN1Q5Zin0BA7DhTFTFGTBil/3Oec8TNfIK6XX9vFYx15IIp/cvGkvxuaWw7mqddZI3
	 zxfhoXywOQDzrCZhxOweCzPZlNmlLtnXvVe2Heb3rmctzgqqd6Gl2PiA/pk/2sIIgB
	 QSdrFve3ETsrnCVAUNxxMQ9l9daegrLPGkFM7uoPT4YbPd7pBM4K9heLhynb1heqDR
	 yyHfe4OzXXidQW/Ji5uiyzK6LpUPCps76Hjin3En7XblOrHPTFXwQlJGC2XNeiqOLo
	 SE2fLg0P0Nfcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB6E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652335359.24205.5245566260424807317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcba751a0379b0bd3342a938e5a11b903d084f7bf0bae09e2e6b6663468b84d7
Date: Fri, 10 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736523353
