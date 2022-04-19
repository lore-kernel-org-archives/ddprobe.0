Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB4F10E0
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 20:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650400318;
	h=To:Subject:From:Message-Id:Date;
	bh=0OGbVFZaOg4VQ90L4xNHleC2Q2wRn1raCjAHhJRwxxA=;
	b=S3qPsbQFtjrqs8QY1UoQxYcYq2cNzMQeXmQjOvzxV5Vw2G2Ukp6tK4fWVBk8xTxL
	gbknHz9mFKaJX3VFCoZc2FqriOB89BVyFCGBRIfueqSx0KdINP07WdWBnVsegSj7Zvu
	MPsrhSNLin6lc9lUlb8Bhr7kqY6a8obdmTyzx/EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650400318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0OGbVFZaOg4VQ90L4xNHleC2Q2wRn1raCjAHhJRwxxA=;
	b=Sq4i0Nz9ZCaCXfYSHJUBnzvC5ZkQNCv27hAlmCqYgXOKouZ5eat00Gsu/OKoh4qW
	qahaFlVa1QSpHR5Qk2VGc77PVSXWfQM77/+l3ibvgUVjwChIrTRn0/Aqf2KB4kJOuVA
	jtqDozFUacW4j4diCYVD1HAQg7DuBKKw+pXgrEDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804386532b-c86ad826-9f1e-4f5e-bfe4-45d37f8a608e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 313cc7d8e3940d59f36add15e576111e22f1a513e4114e7d6d1bbc9ecfb2856e
Date: Tue, 19 Apr 2022 20:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650400318
