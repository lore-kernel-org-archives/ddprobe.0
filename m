Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0448B7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656064612;
	h=To:Subject:From:Message-Id:Date;
	bh=7+9reCWArQK6Q5zLPM9rk2pBPJsrF+5qbhcac8q1fDU=;
	b=SddEFKSTyY9/prp/QTuB9sSfp53i7Jx+5V5nLkpwewh0M2wc2142wZfeDCDN2WA0
	AezLY6ydm8rqnnJAgbo/WxtRTJ/WcgFhvz3I19wJklOBB9rLGTaOzIXOSNEuYVILh4Z
	js4WPqq9wOcrDHePEow8KvtpPRk8w9cDKO78Qy18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656064612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7+9reCWArQK6Q5zLPM9rk2pBPJsrF+5qbhcac8q1fDU=;
	b=VwnmlMje/sYaFaMAeAIeJt2O4g7kl5+pkiyx+wj83P4AvGCTXyfHiLUfZcrfZKad
	OBZdCWdf4PE35VvXrLD/jaq8y0HEP9qlIwkdhaL0FAjc01I56Q0ifNYZ4HG4shuWnEC
	FtG180jdAoUmkju+uUsg3bWnt419B/3N/Cec+J9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181952497a8-1b7bf1ab-cf3d-47dd-83c5-37b9ffa60388-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2905ab9a28b7eaa6306c4e30dbf690307d475b99c9606af4ad47dab6f1a114a7
Date: Fri, 24 Jun 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656064612
