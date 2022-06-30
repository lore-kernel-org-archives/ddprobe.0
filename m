Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005F033EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656601612;
	h=To:Subject:From:Message-Id:Date;
	bh=taoi7tL0sHgju1j32QpaqvVWdoXodfkqbTfcs34xKu4=;
	b=XwJT1XflZw0d6mqpBPYp1YEG+BM32So3Nh7vawbkd/OCQ8m9OUvuh2BNyvKBwuz3
	Ia9+O5YR7T2ksKUv5iGMQ3DkfzJen1p8H2r93Cq4y5/E7ObGNec2GJW24GN+9qU/ETZ
	AaYiXn245A4keeYreDjD2pJxzTGZN3uWZ7qyHzpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656601612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=taoi7tL0sHgju1j32QpaqvVWdoXodfkqbTfcs34xKu4=;
	b=feGUPrfbsfmy1b+iD2unLt0kS18m4pFE5W/uxoDXoWDAf5QJkPN0xSd5VjIWE6F7
	qflLc2p3szHVHuqttZM+Y2hbyOVfyFmAKdXRYpXy2+SBr6Hhiuj54KFdodhkrvHqKKL
	vU1Tp0KoxgZjo9sNLhhUW65nA8jlziNCx5Vwyk7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5268ffa-e942cf90-22eb-4c74-bad1-69ec06acb6be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d04a59206ee6958f6adc77372e9a4be41bc4612eb4e069c4ca835ee9d2021bc
Date: Thu, 30 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656601612
