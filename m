Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACA628E7
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7F1C433F0
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671096087;
	bh=MC8DYP2+lOtfBRoqlEAmp2o1tYWW2hR569onzQ7Dwz8=;
	h=To:Subject:From:Date:From;
	b=MKHzWaoX+ftguJdA+AKhizxxbrIPqPmvYymgO6lu/9yg7Fs0YxIWhSSOMf8m7qFHm
	 f455Up3UPtIKpWttsE65QouB9YK8I+oVHyxc7P6GemGv1iHM0PcYn6rwb7p/154oVC
	 2yQqw3dl41KJ/XaIRaMeu7+IGZLDDPCKPYfAEsiKNIsyQWDmL1AnIA48n4EF4JNVrZ
	 k96KN8fiKdPtONxtIsR+m6AG93KAwO73sppVL9P6K8tCMpTWWXZENHN33pNQi8kVHQ
	 qWvuBxKh1gy7bHHulgr/OVXbImpGbnzLuhA4pxo635SOq1OolQ5LPOBddDbDNuwlm0
	 oTnZGYNnZGL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94397C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109608759.4841.10086441329669252710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ff8dc6b2103575a2fb88603a04ca0bce126ecbcefe5ee3866c64af195df8f5
Date: Thu, 15 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671096087
