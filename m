Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD7A2109
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EBE1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671921087;
	bh=h0H0DLcL2F1SiVgOK/7jVjDLPXrspusKD90GePQF85E=;
	h=To:Subject:From:Date:From;
	b=Qsel2yPqsKUH7Ggjz15JttHRNxI5Dzs189rX24MnNRgtDzFRaPuxKd8EqS9AJWJHT
	 /dJD1HefBYDh25CAZA1KD0VI5Hp21f4Wy4rMV8b702W05itZUgunhyAj2q8GOuGId5
	 JAvrDFuxpp1oXFts27gj3OzmLd9NvfQV5WJmrGvvhMLo37VNAUtRSusmmHMA+Tuqx/
	 +r29VATaIKR2OUjm6W7/X5hBVzrVtlOiSE9SAuV2VyVaCTsil3uo/CAPxwJ6CCcQsb
	 mzfUXeopCxJTCpDJpUlK2MnPiwUT/+EjRvKfg2f1WV/MRIOwi5LlkWBCdYy5en+7CF
	 wLyyROPaPFyYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6897BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192108738.31082.5284877321706833035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd70b5b74e1639b38cddb169ee1504d4f38cceec048c9d26f476c296e367c1c6
Date: Sat, 24 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671921087
