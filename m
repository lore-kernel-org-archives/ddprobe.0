Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B4110EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F6EBC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672998687;
	bh=9PNcqsRacmIccNAVXc2XkRgkumvSnb+Lted8uLq7raw=;
	h=To:Subject:From:Date:From;
	b=Sy2B7adU30FLK9Iesif6TU4PDVn4aASfm7x46B1Gqs/OzYFkECdkfIIifiqtSXL/M
	 zi2hz8y1+ZYETMwrwsfJ6/WeTdmf9RkNZmtvtMOP095WH/QnkUZjqwMB58G4CZHis5
	 o7OmdQJvgbektnCeIeSSWFBDW/L3D/pQSxFo+VL+ne+IrTix0+U/Zkj7fKtZaGT5aC
	 U+e+tyAAO6bJmGWdeknBSajkPrpEL3rk+7T8XDU65dlXYBmfxdjT31vrKvBQ8BKG8D
	 t+EsPi8nqf3pP2Qh1VpmuQTt015EpYyWlusbQz2IaXaTUqL8m27WgvnQizvkFkcL6A
	 mLHoiM56uG5QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71129C5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299868745.14596.6482365994130369099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d936f9880d34847c033d8cd26a564b4e91f1e9e5f8e821f99f315ce84dd72713
Date: Fri, 06 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672998687
