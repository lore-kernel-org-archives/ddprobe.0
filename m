Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E767C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 11:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653392819;
	h=To:Subject:From:Message-Id:Date;
	bh=NdvXJfkL9PTghaiZLHzjvly0EnzuunEk4/NGZdIpKSc=;
	b=dNl1Pw+HyAIvwdIUkNtOWYbAS4cJm7xYy/OUTpRl0i+oeB6nITZ/Mqq27fYDpF9I
	rrvubh6jAXjvB+rvy8U7ngiEU7Pr4tVaHrvELf8kPagD/atoC857nVEc6whO0hyg2pN
	d7hIRv4KjVOpRp5IM2xO47gkriQUn1MDbYKyRA/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653392819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NdvXJfkL9PTghaiZLHzjvly0EnzuunEk4/NGZdIpKSc=;
	b=gYU6HLD+e18RHH6MuTbxQp/JDzgAyQVu7ppGyx3E2ZHvZ9qCgSba7fxouDnb7+et
	vEftZZf+zuvFsdgmyg0IOdQp2JUrqKCwtHmJLFKQiFcGjikfoUO1DGp/KbZWvMHAVUn
	w/Tr5Y9bXGVbesti6CNf6UjMFeq/FqHnuc+U7Dh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5e4445f-10909553-9837-4917-bf89-62c3dae1dd32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b10e0761096a9bc0c759c4d91f10d6fc2b33c52a55ad103d2b047fecc257ab0
Date: Tue, 24 May 2022 11:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653392819
