Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DE57C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657132612;
	h=To:Subject:From:Message-Id:Date;
	bh=DVFi8VGy0V/DMEOblCnjDYPvq5FskAuLcc8K1Byvbfg=;
	b=A3JNKNXiES2vxjSUglhLd14aN+V4yhzDnq8iih0ofOzpJN0t0SIqhzA8axTbV0PK
	68Lekn7smdn/ozXUti9Sr0LLwQu+SYbzT3u07DY/8JGx4DW971E7RtVU2eJ55F559Y3
	Zv10/NohTPhY+zNk7c0V9GfdlL0CMd9KZkN+Aw5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657132612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DVFi8VGy0V/DMEOblCnjDYPvq5FskAuLcc8K1Byvbfg=;
	b=H2iHstOAUpVkRczoE+M6g/uuvW5N3dW6JyrEHidyqyjm29V98tVMd7b5OSpNNj+e
	KXKqYG24rhA8XVzVLBPh1SMljdbJyp/V8hiei4F2jfsi9rEEx+52M8dpA+87UtCOBUo
	Dcgci2LlSSX37qZWjP6Uba6PQx5q8JNCl7VKhQHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4ccfae9-62eb3d0a-0f06-45ff-8c80-a428b3f15905-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1c9f99108738b67744388f06a4fd9eba33476075bb6de6c860f5b2b00ae377b
Date: Wed, 6 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657132612
