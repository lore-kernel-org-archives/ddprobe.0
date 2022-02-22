Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE047E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645512984;
	h=To:Subject:From:Message-Id:Date;
	bh=Gh755qp0UrvnvFm8atTCO9u9wxHXSS+kMGF6MNZsh/w=;
	b=C9jGPUz4W9zDt4h2NvzDTcnucSFuYwYUGStnDTPAgL1Guu4wu8IQ1KaElwBrkCYR
	ygCikHAuNB3vqkLnNrWzlxDSDWK2Qt2GjvX3FECwYKocfHYn29hNM6j4Fv4HogLtIeu
	leXkSQ4e3NDtMEyO6C8vyy0xjcO0CSuuvuQCcQkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645512984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gh755qp0UrvnvFm8atTCO9u9wxHXSS+kMGF6MNZsh/w=;
	b=T+Za3Exg6Jfxso+r61IA/Ias5Ssq4ouIhlGomS6sV220/y00zHrTYslyHLQ38jn3
	JPsGJO3g9H3QGNK+JAyriAGB5y5EF5PxEd3dTSFe5WDSZLQjS08zxbTEtJgXQWt4As6
	/87Sv9WLatV7JwGEZM/YiMKOhAo7EyiW/J3PJ+cQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2037889a-5770c05e-5041-4863-ad7a-9cd625f67598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00a275eeec477664203a968391bb6a7b1924abcfbde31dbbf8363c8c6fe703e3
Date: Tue, 22 Feb 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645512984
