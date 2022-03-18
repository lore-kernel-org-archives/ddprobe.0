Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC10748D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647605785;
	h=To:Subject:From:Message-Id:Date;
	bh=X5N82HMBKy7ZRRwociSSYeuowJDMCy+ueHoAszT83h8=;
	b=YUKVsYrkwvdvgUz6HLNCWe/kmcwA7GEPj1Znfe5+nBGOYjL3juFmdXvYt08UOwxZ
	xhbHXYAQ4nRw8G6XItrhxJ/EK3x+chOmxjasGlEn4BtKlkUXf2vEBlOIFmIRMJEkS+s
	MmUZdr0bjcf7A7DjqI90BCPhTg7YPcY0ytEO894w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647605785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X5N82HMBKy7ZRRwociSSYeuowJDMCy+ueHoAszT83h8=;
	b=KXTfnlz24Soobio1NiEHDfcKt6oxls2395QvM2NueieTelfkZqN0Dkm20dWTx8s6
	Q8LZ4Ejg7DJXmUrAHXpT1pZvoNs2djvXBZGFhZ6It2x34isgN34CmPBHBdGR3GqSehl
	aELEAWLmPfU/td0YyzumlxxsNcr7EMguL4RCQuEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cf520db-51194cf6-fcc8-40bc-a5da-f83ae3961ba6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40dfc51769b899584042a703e524f6eb2055ee7f8f65fb2257a4d73272229026
Date: Fri, 18 Mar 2022 12:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647605784
