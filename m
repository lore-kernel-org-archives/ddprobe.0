Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273DE15A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 04:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649909878;
	h=To:Subject:From:Message-Id:Date;
	bh=lC2QWyUwPweS+RLRD41j+V3Yz+kyyYTaWKb+OkcXnPg=;
	b=gI3BFiZx5s5+4tg97eCr35bJ/r6Vuy0k3mfhPw8e4qR4H32cDePZXcNbHROh0mZL
	dJHByhKxWmVrmOzi2+BRyMi4kOAP3DpcddmF/rpWlF5+HKWO/GaRXNaPrqn2tf6xe3k
	c+tBiooSnrJJJMQoIy2HiOCNUg5VPjMYfs8Gki8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649909878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lC2QWyUwPweS+RLRD41j+V3Yz+kyyYTaWKb+OkcXnPg=;
	b=N8RVrgSdfLaJosfdz3C89llf1sdmjO6eXdv0TsZSZfOOdmv7ppnTUdMW/QbN4z9Y
	Jd9xM839m2reY+499o6X94E6Q5pgumnPjfSG/2dR18nVUkYnkc4ylHD6NAeVTmCJPmk
	AVGkTc+qxBBPhG5feCeZKn700SsWK9QRzS3h5aoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180264acde2-c7d5324b-f624-449f-b1fe-17e0cc8dabb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce90aadd68e74b6f7a99fdacafa93b6bfd4b7ab4a2be41effd9bfc1173a6cd04
Date: Thu, 14 Apr 2022 04:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649909878
