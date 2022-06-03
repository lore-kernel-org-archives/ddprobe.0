Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B56510E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 15:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654270619;
	h=To:Subject:From:Message-Id:Date;
	bh=T2V4u0D4KH7oEjMWess+ua7EaNAFV9Fvs+hM6YBJNDg=;
	b=RCCWzmc11IkSiXxvmYgbQkA3lxrQxbAwzkdX17EM0i6z7BTmLINIMbKxJowuHDna
	SITn2DjWXvjPaHKG8xlD/+jkQwN7H7sar5yCuWw7hQd/Ke+50qZLK87GR5hj77Rec8F
	d//oLE5QQxfU2GiFTFSPTCwOE5fF9CwC+bpqZbVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654270619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T2V4u0D4KH7oEjMWess+ua7EaNAFV9Fvs+hM6YBJNDg=;
	b=Mdqo8Rkv2N0g25ayUG/lFCjuZXXR3lmbGCtaZCNvhNf9gSMGHBwj2PBmkXpDfn7h
	O8y/uIRCa24Og+lKZ2cinij3F6HRkxEkiQBfzRPjkdLLPvLETU+MTY2EicuUzHOrn+O
	74q5FYYk5U56fopAI1rLZsB5yvtn1mhuR5U/c5s0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a366edb-906eb1a1-9af7-4eb6-83f5-8b14d2d7c5b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 389297242a050172c7f334d34f98c5c159f566ce571e4970b683673a7f23c6c6
Date: Fri, 3 Jun 2022 15:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654270619
