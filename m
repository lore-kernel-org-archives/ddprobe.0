Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36026286D60
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757876395; cv=none; b=Pz1b1ZMFDHrP49hrK920AOwzsnzJiQ3co+4fk/obotd2n4TZ2tSknMOH6s88PKsN2w5+Ca5JBHg3FZb4tBa8LF2nXh3modvWfuAXDRoJaoeWPMSWe5yjo02H4mByjOTMbuD/scrW/Fo0zYCypZqThtPr/IRi1KVdvAnTHIS43RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757876395; c=relaxed/simple;
	bh=DCuY+K9xezzuG4H1O8J21osD/YOvAd018BvqugP8zqo=;
	h=To:Subject:From:Message-Id:Date; b=t5eq45iSSxVPYzpzgcf7tNmwNGmRqGCG38rhLvxlOOrfFZaW08Df/S0s1yURXVvkYdtWauP0Q4fXpmnkf4EEUmXpqPKemAVwpZrlkIY0thfPT14SsdZ5GBVmOBvPAxyP2QM9/FGE5nVA7xgTEqYSG9dGNO+6asrgfXIBRmRYy68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNpPQG9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNpPQG9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C77C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757876393;
	bh=DCuY+K9xezzuG4H1O8J21osD/YOvAd018BvqugP8zqo=;
	h=To:Subject:From:Date:From;
	b=CNpPQG9jR3IlADEnUiW9V+NP+y5aqwf4ygU5dPYndL+vXYIg6t5aaKsZWUMwNKNSF
	 R/s3bOGTTAou4c8QVOX2VVyRhW7xH9ErnDrIF2ZSfg4Mcf/FU/KhfOcjiPSofo3EYH
	 QHZ675ngOZPROXL9dmVbqF3zvvJfcBnSXoCdK8yGPBCDAbZasCx2YWKh6afqqV1uxF
	 Z53goQXP/Da/fehjyLupRg+fNX9z5QnLwP7ZIrX5N+ltG5bCM7lLTyprqHjqfWfeTD
	 UdPfXIsYW3mrPt7IdNruS7o1n0dYPPawjO/kM/fLVSMgZDtv3TQagITQm8hAU1Tyi9
	 S7NhLPhqHF0Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DE3CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787639357.30237.6745912407415156677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbce63a443e9fd4dcf90c875ca85ce17091145a2691b8a96c18871fddcb0299b
Date: Sun, 14 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757876393
