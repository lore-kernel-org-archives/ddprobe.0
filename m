Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7ED367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657933012;
	h=To:Subject:From:Message-Id:Date;
	bh=QdtXxCgxLB7CmU2zMkB5YjwNOau+pK/R71gGkxiheeY=;
	b=jeUaBsq1nfNmUyydXbqZvajttz3Wcj1tGIH+RSDwC4JfqGwEH8EamzT2d03vHZPX
	BmSbG0EikGyx8C+xOSKh2I6RuMR0KCgz4bXp6yrZpA6rqreVWudbc6ZaDIFnR55nA7M
	yzdWCiDRidSIQWpAE63QTh1pwwTTrpxDPk88tznU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657933012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QdtXxCgxLB7CmU2zMkB5YjwNOau+pK/R71gGkxiheeY=;
	b=DbB5LiJj8T+ygSNl5mwIFxtYu/5Cejt8TiIcy6u8GG9DJjNcHudpptCvFWVfSnBE
	NqPn00rwAXgAyZ8MCalGRmLsq4xeO3bXiu5YxNizoIJdtuVotUvhXKPDYOK66uDcHoa
	hd1AOjmwkquNqATyRNZDCJ1qyRt/Xud4ub+RCaUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204821d78-98b75b0c-7949-4558-a079-8ade425abe81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6e1c54107a12a8f919759103c62c88b07a99d8848110e11726fac2b2e32b74b
Date: Sat, 16 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657933012
