Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54471211701
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738670754; cv=none; b=OFO+AAjSBg1mCgKENRFYkd/cHHrPWZ2rr2AiWNPzRUGMWa3E/POVubnURhNBWWZrbFJyv928m+XeUyUOO/DUWIjYECYaPhGa+hu5sy4yqFWgh0TfzuNydEBabM7LEVcwYqxId33YgDD1jevS01q0TPIlRTyq2lgbCwprtv4Ksc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738670754; c=relaxed/simple;
	bh=fxtujbBMhvtjW2lc5ZjTW5LW6OtNp6IPfU/bGrsYgDk=;
	h=To:Subject:From:Message-Id:Date; b=tXWta50k9Z51jJB4vmR6JA/g1g5rGnswrKXkT1WWrNVLvPGugm+PESTDtRLfcUV3hbKiP2iFVjrXAUc1DaqEbOeDb+yVb93Z01mNFBeooJlBPXSiVkYV2Hp2PbPR7kqdpPzB0Sp76iHIP6xOtd0w6nGFZ28WpgR928/2KjO/Lv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mhyi7KX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mhyi7KX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF946C4CEE2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738670753;
	bh=fxtujbBMhvtjW2lc5ZjTW5LW6OtNp6IPfU/bGrsYgDk=;
	h=To:Subject:From:Date:From;
	b=Mhyi7KX4+o/LKqBjbqCMnE82qfqIuWvvhk9q30gHsZpRZUT9zH7CKwE6oy5LV8og/
	 oF8BnhnjT4ZB0mS1d22rE5RgxtU0pE/DHkF9909fki+d3Xthdtk9zVPTOuKW1voDve
	 bU5OOjEkgzwnXKOnw/RP1+PS9EKai/5TvtJBNFP3PheD1vIME3TvabPUJiPM8Zelmu
	 8moH95YWUif9GLlMoiS9itHL7qvZxJLtSv2IOmNkCHKq8F5YhJD39obp6oNN0OGqxi
	 QCzBoDdG2omF81jk75TU4w5eK0WzaKq577XwFXUCdmxedoom+V0etTWWN3kp0f5izw
	 RH0iBh4iwckng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53E0C02197
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867075365.22727.9435640322746428367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956ba2c2404a5664d750393dfc57f0ce2d1d6707256004a2c7ad134308562df6
Date: Tue, 04 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738670753
