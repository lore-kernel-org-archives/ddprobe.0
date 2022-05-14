Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A99624
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 16:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652546699;
	h=To:Subject:From:Message-Id:Date;
	bh=29SwAM94fRyeLHbje4hNuydvFj6Xz45YMiu1l4JjGXY=;
	b=Rcgho1UxdkkIkoQSZReGN4eGuomqgPqn0sMgugFLIN7bPbfj/TusvAPr7i7gtE1a
	/eq0U0T15oamPXj7JdMb9807KCownLJSRTIcbKRZHfrSLjTumj4joj2EtF0aJhlwYif
	eJn1VeQRB2ck+zIbhUJLMZP3lloZC0FCXVFgWRSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652546699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=29SwAM94fRyeLHbje4hNuydvFj6Xz45YMiu1l4JjGXY=;
	b=Cvrr9WXbILZou7dvtrW+P2QkqYtpLrBbCe5OXe5EaelXJHWRbDnearPhdhHc5N4A
	To+0uleamncS3trh/LcW3FRmDaOEdbAi8r0M0ROShDEHnzB69U6cVAKkCtLKOyhXA23
	G04HCSeYpYIjxLrwU3OyLJGgr1b5is9Lqjb+qMhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3758032-6e453610-d957-4cfd-ae58-f720f2a5e858-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdf9f5f6c6b20cde707d1fae45547ea6e739f8bac7753bfb01f4299de1a5ddea
Date: Sat, 14 May 2022 16:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652546699
