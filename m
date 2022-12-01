Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25FD10F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6871CC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669884654;
	bh=Jw9JX5Akf22ebp8gL18jmjntWp28luzhFCp+SC5O37E=;
	h=To:Subject:From:Date:From;
	b=uaCES2Qq6E6ctuQMku5a4zobI+m9U8E6hLg6hzAAr5ZnlbY9uaWQNsccb3z2o3TrP
	 eaaa/a/HaButJJ6ae8XksNCD/9wbGmpStxxHRuonzGVdBrIDyVZl/uQheJyOYqYGmN
	 zsZhZ1E+SoSRkmaaokuU5YWUeoluwUhd6aeSXem9rqjcphRADLATE1k0lMpPWO5aeO
	 6AdmAGI283+o4Yi3d3naWMdzUIaUvFGbw2ccHT94TB2j2Xzgcg01e3074EzCOttpKN
	 9cNUDkmlpFux+shg7pB25+LjRnpjs/0rmVGnnhU2f4b2gyMeingXGaTa0FVv7CFwOj
	 fWIlfSaeN7B4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546BBC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166988465433.664.1122073182727180979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71ce82f32b9c2aa718ee149dfdd44a79b7a66eeabc4be1483b8300ec44f329c
Date: Thu, 01 Dec 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669884654
