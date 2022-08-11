Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B33833C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660227652;
	h=To:Subject:From:Message-Id:Date;
	bh=Umc3qtgle6SOCeVPQ+I1BEh8UI5bzXxlVBmoyghzZrA=;
	b=fXaY6EH7jGwJwVGK3+KL00LW7mE9f6YfOGUsaoRbqA0lr0wInI1yYaQF4c/ByF4e
	ANzX0VOl30PCmKlNM4SLjrK3OWd+gUHuzGkebyJ5kr7aMFS1KYn8zhUhY7zZGHH9TnQ
	03KM+GjR8IiPP2sgPXW37pINvky1KSfJLpoJaj8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660227652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Umc3qtgle6SOCeVPQ+I1BEh8UI5bzXxlVBmoyghzZrA=;
	b=DNM9Dmrdn6H2wtTCyP7kUFU4Hm3IG5KKoGFHLRmTMvHQX9jYwnpvTAdCRzGglbEB
	ViWYDZB6YRU4rCOXHfJd5ww0J9D2bgHPXdfyp5RjlmPTHGBriQFvdFNRyg2FZ30BGR3
	pOq6xi04fcVZ3BfCZpvWqcHuO5zlVcI8qrgTRFTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d478bbc-80edcbd1-41ec-4d6e-aacb-becc70f6153a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0116bac86d1e3a662a2cdbd5f0b561f64af9f457c2974eb1206aa7a800f36fe
Date: Thu, 11 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660227652
