Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CA815AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647568585;
	h=To:Subject:From:Message-Id:Date;
	bh=0013xRF8cDbEsBSQ54jCK/RQOHQVsqplJo8c6chaPuM=;
	b=OGmKICCLANgI2M19jwJPbGrl8T8QlcZjDzSDxzl4XRNkZGXS3gX4CXjxMoGMjQiy
	1nA85fXAEbaxtg9qCpvq9E9fMP0Ae/A0iCaXHh3obEjaM5MA6PvmEy3F/+cJmo/PFlY
	QU1nP73hX66Wg6rvHyIvMvUoefcyju+UwlX6F6G4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647568585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0013xRF8cDbEsBSQ54jCK/RQOHQVsqplJo8c6chaPuM=;
	b=Mm/1o8/+p2p9iqugLb7BLMUH4pSyey9Z0VVI4CYD/QkkFLUPAmGGNRwxo0yu0Mlz
	BOV27ZqV9JHBIX6/Can97+ZmNnHMiHy92Ouh4JzdOGzs86KfdOWSSULMv/YnCs5kzzM
	wdgaIlYda7qWHqtYnjtTI7vsruWih+vS6g3f78sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9abd806f-80cddca5-5f2c-48b4-a873-ea7712563d56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e79d6fc80efdfe147adcf5fc056e1243be5b7aa4495ac808ccda774b1abbccdb
Date: Fri, 18 Mar 2022 01:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647568584
