Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05D333CF
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA81C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664311253;
	bh=W22YDjnYmGRguW4/G8cDBI1oke1ZLv798xSx3VbgfHU=;
	h=To:Subject:From:Date:From;
	b=m9q5csJBD/tfTKcweH96FlUWW8IpiP7m30ZDYGjM43UTw+KQxJV6cOaY+4AB3uhak
	 6lsEaj2anqkMKisAcg2VGZS23qhvOJQR58dB694ZYXH3t4jBsaQshBu7ViM/2oQp0/
	 NABeXIKKfEC9d6RsQeBTxyNlo88Wm/8AtZBdjQ4oqha/K4hWwXr4Dax5kDQem+SsEV
	 xQxAnImAUO37UH0JCO75Oweo166J/Ip76FJbFq4ajl++TvqI4sNm3FKZhOxNouRDuC
	 TQWSIrD5x/cE0ELL/k52RGNCg+mAjACYVzihYy/TGkb3UN4K8ZIQYgl+wkSUOn5pT9
	 o6ekktIUqe0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54019C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431125333.10358.5083558442114976507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93ec79cebf1cbba627a7a606f4e8e40052cc8af608dd2bb991d38000cb4d1a6
Date: Tue, 27 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664311253
