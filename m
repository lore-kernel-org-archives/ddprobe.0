Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7B9A3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659687052;
	h=To:Subject:From:Message-Id:Date;
	bh=T/5gV8NTLyUFp5Bp1Wh/pMO3VmEzCGXp5NFIXoHkhT8=;
	b=TNqWcY9Kq0qUew9nMVy1RnSmUu6GJcY+3ICmz2+9FRsYog6YC5uroDEim3+X0ZZs
	/9zatgnD+x4ZYXzPU3ZWIRr5oxGjp/4Y4hzmQs5O9gU1wwsOcxVIuMBAMtURHPe+Nju
	x23jxNLPGurILeG2k6ZI9zCWGPR9nuGZG9M859tY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659687052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T/5gV8NTLyUFp5Bp1Wh/pMO3VmEzCGXp5NFIXoHkhT8=;
	b=gPiTMLmYu/eFIfUg7Fsw9CYbLwNhi72YnJyFzPb+x6mDawfQjNPRcUwbJLg49Yu2
	mjQNwJu2dVjWawc+MncCGCx8upvqLK6iaDjfldgmOfQwBbE7f8tvlE1uvg4z79eLCkq
	vb2MQlN2+5J5BDX9wLu0legWDP4Cttwt3COa+qWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d0ea520-84f592b2-d7e5-4257-8867-b1ba42bd3b1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f63db8c9e199602460217445c535637a3f1d26247c6a8f6c60bbcc68a3262ee5
Date: Fri, 5 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659687052
