Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C72D33ADAE
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786258834; cv=none; b=NJ1Dlyu1t1dZWm63vFNKHenpFE9kJaQT4Rqx9NYeMnNJmO7mmVvqnEIihV5rkkF1MvYurSy2zk0ynydXZ9PVTwdwsLbYgszDI/ECtMiuup3EOE0yAQ1PDSwXR1nE2jO4vj9sMm9SsgmMueAZ+G5fnuTrVOkpYnyM0c18RZTpXVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786258834; c=relaxed/simple;
	bh=nvzxZYgyxbF1QKaKZV9Qi1vH365YU1QC/qx63Hb/oiM=;
	h=To:Subject:From:Message-Id:Date; b=IK4obrokV5NMmf2qpwbrq3O31hARwUGUFyabT6h+iWh4sXGN4Bzb5TtSqpRfmw+blgkjPV8OE4IKNSGb5BO0UjaESxSN3QK09J8rQIRXX8MDe2TEREXkkSnrrZj1ITF7t0xe0z4uSE1jQi0jmJNvDL06h97OV7XJ+fN5NhyPBP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZbHC4ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZbHC4ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41D2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786258833;
	bh=nvzxZYgyxbF1QKaKZV9Qi1vH365YU1QC/qx63Hb/oiM=;
	h=To:Subject:From:Date:From;
	b=UZbHC4ux3knC2mRQOEt0LVnopB67nfj6hISrMYD93TjR3Y2OjlUB6eRew6qB/jhE/
	 zBm8Ku7Wxr1VqvQI+cKR54jWyPsr1Th9GYqoT479PLMyJIvCcHnQXDEcxh7/qzCJ1v
	 rNvns20fJQ/2kELNB5JA5K05ohtwtAG0iy4gD3llJHBgyTWJjhfJZSBVA0a5zdzwCe
	 kVp4ej713ZUqtDcF9K9Ugh84yvvwjKaHHigDSQRGEg9jVtwnTQcNl61Bv7IhDpnttv
	 ozOusfBxNHpI6nlGEaFrmvXXCvV2xUSfDad+jFa+eVT+2N3L7vcfEdr1uVAOrMTD7+
	 DUfZ25HmkFNnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBCDC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625883368.28880.3790251825174086303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77adaba780356aaeb3573b37f5054f1adc62ed33c88a880b80629934601da38
Date: Sun, 09 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786258833
