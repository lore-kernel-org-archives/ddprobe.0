Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D1B23CD
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 07:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650612658;
	h=To:Subject:From:Message-Id:Date;
	bh=bQNqe1wXOX+DWXFC11nQq8Dt4E5yB+DVFO0LLQYBXJA=;
	b=SoavPnCmcqRN2zif3hQ8ZrZnJAMbMe6IlVefGaMrrvfk4bwpRRflZRkclZid2+5/
	zO/q9RsmaEsVnrhuJi7kGJXQikNm0tCpeZWcpI3Q3+uCzZPjPe9AtYs4IYC28qorFhJ
	aC3o7NBPsLyWaGD3bNPET/jqzm9/RehFTReY5rBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650612658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bQNqe1wXOX+DWXFC11nQq8Dt4E5yB+DVFO0LLQYBXJA=;
	b=h6DOXSY9jRmf5e11H4Ujha2J7X2UNPrGeZgJfLgYKEdJoVcXw3p/g5q0dYWfaTwf
	fl4gf27DzenEIWJ4D6bX4TXz++l1W8gkrab4bMrNEV7IzQ7gRoE5W8WnLbUdW54FYDJ
	fiFw+VY5ngwbHBgqo3F3bHPMVGTBsMVHbIy8uQjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180502e605b-1197908a-ba28-4105-8fdb-5c5b22b760cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e259c7bc337acb2ac46f079183ca5ba1331056454b5afd61f30cf7682edad36
Date: Fri, 22 Apr 2022 07:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650612657
