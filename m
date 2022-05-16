Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29204138F
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 20:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652734439;
	h=To:Subject:From:Message-Id:Date;
	bh=dWrVAwLR28oKqHug68XBNnzJiv3hDvLppJC9u242d9s=;
	b=CszP1sRnjuAyQPhdHh7sf2Zdl2c/MqW+zkLZFhSj8VRIEeoOM2qvfhrw3OTbgJIU
	mOko3iqOkhz+nbt57S23d/Y+yJj5cVIfc+ePKvvUDAIPHOuQ7gjWaAEiqbQq8QULcp0
	wd/AU5DFjeRT0QNGyy1upm3w7wKC7iMUfs99b+1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652734439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dWrVAwLR28oKqHug68XBNnzJiv3hDvLppJC9u242d9s=;
	b=OWbgSD/5aGvsQzwgBR0l9ZGrMRqmAucvKQq+ktOoYMwFBrhqidrwJoBbObeTJUEi
	MyWuFuAplE3yL5TrlkGImyVGsJZuzY4l4n7i8WU9xW2I52bKS43TYP+0sLsEZOIVY5/
	q0zNHs0vRgwM2iyYf09l6dQbdKCjGpk9BmrLee/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cea62fb8-28661e66-df4a-4eff-ae5e-ae95e09fed57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8901e8a12b48da7d9c386e2a0a5794d3d51f4ae7f2c2bf890723720a5002fd28
Date: Mon, 16 May 2022 20:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652734439
