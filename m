Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB947A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 06:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652942639;
	h=To:Subject:From:Message-Id:Date;
	bh=l34Fyd2NUG7xFKznhigSRA6NHruL7/SOq295bv+a5Tk=;
	b=QEozE5FquFSWk3Br8lnDS5Q8yssd/Su87dO2B+a5FsAVOjT7HKazPSPylUsLVHSV
	/llPkpz7KoEVVILrBnrZGnAQFLrk4uietRcHTtdDipm/KYCLBqMEp+j6mQvY4KR1Pq9
	/V4lr800mnQMa/ywuWCUfTHgOeqKaG1kjvl6PAx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652942639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l34Fyd2NUG7xFKznhigSRA6NHruL7/SOq295bv+a5Tk=;
	b=grPxF/vapgB+Q+/m6KQHTTdvGVsVYdbinCXe8aF5Sp2peu8YOwIRI9L2LGRaLi+Y
	up95iXj8aHdJW27Qw+vy9wXelDTnW+3O4qf6P88SLm+Bvo98zplE72yBrlyDkBc8GKA
	tQzGnFvyCw4R/x0vfA89haFjAEWqBsBU+M0sPSQI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db0f109f-c5ddbc12-45ab-478b-9494-5bd32f2d9eaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60e6ba7122bb8a7b3abd6bd3931588c7a3dca477d18e7362543201bef9cb57e5
Date: Thu, 19 May 2022 06:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652942639
