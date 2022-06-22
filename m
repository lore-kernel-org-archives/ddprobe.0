Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24A51843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 13:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655906099;
	h=To:Subject:From:Message-Id:Date;
	bh=SPpI0CcyGO1eF0WYC55Gdj69wcXveEcxmP3QMfh2nrI=;
	b=cnwEBpvJC9EbQ8yx7wudnW9SJH5gYFJ02VeXtIQrnAHiuEHf7q7XGC6WWCw1bhH7
	Aa3H6A0OIlIvcxr4wXidiK5Sy+p2di77IhwQ29e/nNdbJsBygP1QXTeQJnNecyNDsO1
	4bnlHfHeMpCNK/2QETlrMbtlsb9GhVCQL3nzs4VE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655906099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SPpI0CcyGO1eF0WYC55Gdj69wcXveEcxmP3QMfh2nrI=;
	b=GYjnIvbu1nRcATvN36TJbA/KIvH22q7TAWgram5Rqydzhc/qrQKpQnnXd5gm70rQ
	LLLVWDO5yg9dcnrakIAU3NlxvjrrXLqEZCTONW6zonm/I/DVy1N5Rurm1AV+M8oBZ+7
	eFupd2HmY68GpOY6+fVCtZHvwzNNobbf/kkfnrLQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818bb1e01d-c55d2738-7855-4910-8218-c143d17355ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 106519279beb2ac83d32e7cd85a459b222126702438ebc1d7a030ac9d84dbfd6
Date: Wed, 22 Jun 2022 13:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655906099
