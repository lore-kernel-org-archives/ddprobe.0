Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179591376
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657523812;
	h=To:Subject:From:Message-Id:Date;
	bh=ARpSTVx9TzDsEQoTQR6FQjtHzxEDGj3eSRBihMl7W5I=;
	b=QLbuLfVuDo4O2o38I8m+gelTNxrfTE5iCWM+mU5ypu6iMYCbyF+hPO0s/swKcQ+P
	FG8KE5FrvPZhsTx1Lyduan5s9+bWNGYABEYXj9JLWfs28QfgmyAgGOeHce05udD8679
	4oM1SIOjHfsyJ7dyCPaSsqzfxLYN8UT/c0rSTdb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657523812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ARpSTVx9TzDsEQoTQR6FQjtHzxEDGj3eSRBihMl7W5I=;
	b=bS7EllKwSXL0Mquj+iRAdK1pU0KlfpL1GHYVQOImZivFxQpteQ4J/+fDjKz5e37l
	9V+vw41e6mcsApLd6jGk+kIID/fjSFhfP6frU53NbEhxuhYFnNOD3lCHk0G37P4g6gY
	9yK48jsbVcfNppxRTF0izAyRENEsCaoxkcANIo6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec1e37d1-efa40b83-2ff4-4278-b40d-4015ca161b77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 468e4f7706de029c6588457c8b96e518f7fdbb372800feeeea0249f69d971acf
Date: Mon, 11 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657523812
