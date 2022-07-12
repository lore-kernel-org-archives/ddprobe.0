Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D87440D
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657635412;
	h=To:Subject:From:Message-Id:Date;
	bh=6zvyrHHcprmqeWYiGgDr0NGlgGxjbK64SY5b+KwibP8=;
	b=f6OpTz1kx+tm1kfPJK+/aPkDO0SOLH5HvHBspG6MYhv98Arpjh8sQ8c9y4r5Y8sJ
	vqOb85oZFWoVeAhPTrJX0JnQmZqbtXAIV62c6Rfh690cA4vgHiWiw2fqRyS9spetNWw
	puzYKImkNefGqVZ64x1HaynamMG+fB+lUowKj8co=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657635412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6zvyrHHcprmqeWYiGgDr0NGlgGxjbK64SY5b+KwibP8=;
	b=V55ioyxSfIAn7XAVSLBsD9RGeH3A9BnRXeGxNRiAqIuHNbFdiYr5YnQ9DroJHugW
	KqAxCP+V5KXwRruPnN/fq950j8KJtK2B0LKHZUhG344keqSJAosSuIWDzyTGIZJ+xD4
	5yETJ0Ue7/fzn1zd4zdv+1P2650kFY5lmIjrtLCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2c5193f-2c4528a4-dd02-44f9-a53d-61fc7a8108d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3918af3c47736e82a3a340b16b1a009d6c5edb0a3817e057a3a3e7c4068268a9
Date: Tue, 12 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657635412
