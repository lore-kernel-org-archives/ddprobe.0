Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385F115A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 06:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648363858;
	h=To:Subject:From:Message-Id:Date;
	bh=V8K4xeAWZ4alfrVfTsH+ncuC+a3z54cARaEjKxTJZDk=;
	b=Awfd4mTYc3nP7u7JKO0B3+k4O6IQ3OuFVlIHcMczdr4mGNd3pR8paISnZ061+FzB
	yym2VmSvFyBri67p9uE/96CTlpt9Lzlu95gyBZS2e7Nab1OrzfmWZqTshYEx/vJGVQr
	kSs09Mkqg5W/FQlhCMGkcTHTL+QmgvbZyTav+K74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648363858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V8K4xeAWZ4alfrVfTsH+ncuC+a3z54cARaEjKxTJZDk=;
	b=EQyERJAbTLmVthncACsTsFZncaaV2qhsmlrcBinxIOOEe41JgiUmePlG+RbT+pN2
	yA6RA12IpuoK28LcMtulDwt3QCBxu93rAWK7whL2o4/F9J5+gZBiyQ9KAP4y7FSO8q8
	3hCrQQpoMdfk9dInZ5JBiJ2+HyO8vgjW6+tKYkOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca24699e-44cf2a0d-0a49-4f48-887a-f95d8e3ccc90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e5ddc6275455873c71e966811a9a54123e7d16cdc808ff204ceaa9017d35066
Date: Sun, 27 Mar 2022 06:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648363858
