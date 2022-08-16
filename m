Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4829A5391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660665652;
	h=To:Subject:From:Message-Id:Date;
	bh=4AGeG2BLQKL6VciAqai1ScFo8PHru3r1gMCWaRgYck8=;
	b=MF12cMO0YI4feiysi7Gg1dnSS2lBdeB4pfgG3qV6PkHzTgKLDUS2alyMSQFM5k5M
	Xh5aLm2+GsADNjPGmmnQTz/JxqrXvy1921mLfqtoUPVz6rZgiyR4pRGvMrZ3fcSu57e
	CvEq86eTx1KwF3xdM2SBfNkLhHMi8PQgaM8+M25c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660665652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4AGeG2BLQKL6VciAqai1ScFo8PHru3r1gMCWaRgYck8=;
	b=E3uy0A6XD9g/m6F1ki/EXDq58KqJJZPYXJiNhHjcvmL/qr2HaMgLIJwX2hZJQIbA
	slxbuHhnt//ykbT8aUZbGCKQECeHhLOWufNdxa0Ic/7E1rKBd2Y/PhT+k7Q/bOz4c2T
	xBAFwN6gjbE91maZbdQwh4LzmZpJuIiues36Jm4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a762e52a-4aa51e82-d7bb-489f-ba1e-9cdf90c0d1d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 682672c53870d4548d80bca2ccb091c92276b5f8132a62afbdb6e50020e0fb86
Date: Tue, 16 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660665652
