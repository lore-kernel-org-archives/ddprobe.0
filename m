Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83C528E5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 12:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649162698;
	h=To:Subject:From:Message-Id:Date;
	bh=cpNWiJlIfDc8tfemUrY5Tkm2Pd6nSeawslR5SGEORZ4=;
	b=P1ZlQA4w6tX1kCuyFWtm/2Ax8QyCim3Mm2jiTZ+9j3rmjsN7toWZwo4YXsrJeAdp
	fxADHlf9m9t9xv/7TRrQFV73AsMj+fKjGzqcUo7AwexEykQNAvfWD8JJY1tgTUbdMaI
	shk4ra5fP/ZZPhCpAqhQEjw3J8m871c/fASYed5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649162698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cpNWiJlIfDc8tfemUrY5Tkm2Pd6nSeawslR5SGEORZ4=;
	b=YywrZqArUssn2bLSiv0mq3F79y2OGPJKUJUnJhtp5/kmX8vkc9yYLckbKo3sYY+2
	i/P4my50BQkBR2yXarrObpNpthyyTPtLIHSDHWENLTZwY5xksLaqy3WW8rMtE1FKkoH
	N2k6ZD7vgUQiRX8EUxEpizM5/LfHmF9n/ia+tkCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff9c1bddb-72ebd317-6992-4599-998e-0aeeba43cfe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6eaedfac5313a353aeeac51404093454c65cb1b87a9ab1589dfb9978b2e8d020
Date: Tue, 5 Apr 2022 12:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649162698
