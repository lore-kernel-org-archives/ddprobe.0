Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7224A3C
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660432253;
	h=To:Subject:From:Message-Id:Date;
	bh=I+45502f/8hOcSTUn0ixf4LpjWAsDZAXITH1LmZYUEs=;
	b=gmRhboiDw/1ARrlz6hInpzQc970m9gyCB5zXllo+60AKQAMaHulIoLJCqtYaHVC5
	RkD1OlmGTd9f7cZ8Im0wFRKcyBAqdlXntfdb2r6oX+UdRutthILRqcC8rIyTw2eTNSK
	jmwfhjw9QIFPwDhkzELPPMVUwKdtESZqN7IqPzQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660432253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I+45502f/8hOcSTUn0ixf4LpjWAsDZAXITH1LmZYUEs=;
	b=i0f8BpXLSQmXLZw8NQ5D0dxbtx+j/Ni64h1uESMHqbhdVSFKCKclXF0SFfA74Ydg
	b9XSh/JVWlB1IQywer00fdW9QwiZveTrbw9Sn2DhJve6ZUg2w8F6LACQ2l+hLXGO6JH
	fwW/u3YQAZjDRgB3PWrm7DMc5eSjsUzoaj8kl9j8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299797e6f-4dab9227-0d9c-49e6-a41c-2ed2b9bba06d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e070ae4a389123b57307f8ddec7daea91df7c2a25aa0f3d7f75d313011d82ee5
Date: Sat, 13 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660432252
