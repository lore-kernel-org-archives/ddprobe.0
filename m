Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B9C3CC333
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779450755; cv=none; b=BBVyJMFCNFD4Igtj2IIZORpiov4CaWXSGxrG9k9h5esX3AB/0CEmqi0c7As+wdQyBzjKWJd0fRd2rCHbPuiF2SrCe0evOvIL1oPXoT7Hykqy1nLt0KwMCGaEtil+xFOKEsGv1Mmm6c4qx+goJhZFvlrCjdNsAJ44TBaz/aGiOT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779450755; c=relaxed/simple;
	bh=pqWMJD/+V946JGBMuH7g43AYKC+TzsGdDSxtLBvqUMk=;
	h=To:Subject:From:Message-Id:Date; b=Qy/FaAK+U5Jy1v8g086IUWInpp3szBUPiAlF81Bcd0Uc1myR6G4+U7WrVQqnx/n3o0M8fiKuKud2wDaYW+GUw40YS01sEEnGHov8R5gnX4c5JUyzyd3vVOeuUoaEjOLCvKnlggbpnsIiNhdAm1OX6xU8enBp1A2bTFW8V3FWVfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLhi33X4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLhi33X4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C4FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779450753;
	bh=pqWMJD/+V946JGBMuH7g43AYKC+TzsGdDSxtLBvqUMk=;
	h=To:Subject:From:Date:From;
	b=JLhi33X49UwxzaIOXbjg629gtqZlgFLdevrJHbfBpgWURHZAvjE1M9TNe9z6hdPoF
	 9DNSceG9SZANShUJfhuVKAO/LeoFXnuWBC/QMup46azGMxsjUNkPJJ5UBrBsuxguU2
	 rPmeM9CAj1KpWwWrLMwRcA/SawBKfMp64FJGF9kq5eJ2dibwdZBq5u+Hmc0sfvzLJ2
	 zfRJ/57hvLhM1H9vhuGuHsIeh0nOiz7gB8MHosJwBx/WYPXVEZy2YL8FzKEQkI47bj
	 uZ2yLcVesOgPojrp2HRSCvBVFmLG5sJUmgnNi6oZ4K2rnhR+Qkcj4rVIzAM2Ehfvnn
	 dHvGzIP6o/drg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9017CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945075368.22651.18438460717688519089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8085b6586fa0bc01492bd14db85ebcf653ad6febeaaf14896ca5bd5327ec950
Date: Fri, 22 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779450753
