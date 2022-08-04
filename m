Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB9A23A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659613252;
	h=To:Subject:From:Message-Id:Date;
	bh=1YzT/OZtQkJH+iYASYzXcrHR+BjdG5A6c2r5PVZQe+s=;
	b=EEmg8+iAVkj4RFSWdMWsZnhTxR2i1gv7AOjryqwUHIbTgQXRwXwh55WniAWsdVyw
	NcIIMM1qMWrzt0ONMwHmbqnZEq3mBcJUVxFczG7X082fiI4kzIgBjaqzRie0xWEvzzf
	DmZ1gj1fXqjF8nSg+L2C+QxOIU20IhBh3MoBzJ/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659613252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1YzT/OZtQkJH+iYASYzXcrHR+BjdG5A6c2r5PVZQe+s=;
	b=E1gqWjuoUx+P9Viy1yPTickn9J/j/Xy8loGia1rlQBTUI0gQHze9UhQdFxkYPyf5
	UnZnBMCO+4y5GrCU3/B5CypPTVyMB9BfxY9IYsLQSbbdyeiJbnU3SvZC5m2Q+KEgcg7
	q/HYpQnqfdo9yDVrYY7jLfK9A+l9kStSTL847lNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268a88c1e-40e9dc8c-5b5f-4857-b8eb-ebedfb018fe1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dd250b06f2f1ff8482a5d8595a676c8fca0d91fc98f25083bce4e61fccb8833
Date: Thu, 4 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659613252
