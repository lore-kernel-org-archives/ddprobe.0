Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88927E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762D7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669521054;
	bh=H9Yqf+n4mAKCvJUOgAY4GnniezduHi5i0HeiC8VEEW8=;
	h=To:Subject:From:Date:From;
	b=ADCsXpjAlbgz9UnLIc95ym+frVlhggcHkloW3YVObGrXf9auQWbDM9yxqup29zeVi
	 /Ig8D3szNxbaT6TR60Mk0B8yoilEJ+QQcMIJV+tf3cXZNjvKehjcptaSmlf8D002mj
	 SSTz4xIfH9aeJr+ZJ70jK5F8cPojfQcdsbMHt6ktGaixqhRZpvMp5bSILF7rM9EiaZ
	 AU0Z0YQItsHtyBaCOHjLxVGFF8khIEMHVMZuEIKMP2oS0WGiTc09hteAVgSNT1pBxX
	 vkxCDG3LDI/Tpj6vYl5EUVsUgbEDGa46LTKjnPyI0gGxJh9RR/z6uyfQMq3AUUZJbw
	 +6+9O/K3hZhcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E87C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952105434.6200.12295325288844900010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a73892c1267e20c6b31a0b22a59103bca99b1ba625eab320f5555d0048f3141
Date: Sun, 27 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669521054
