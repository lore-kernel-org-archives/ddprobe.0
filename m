Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFEC7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659074452;
	h=To:Subject:From:Message-Id:Date;
	bh=LRDRi9dLNSUNCGwv5VGbqbWa8e++gNmAxHmVRUkV9Ic=;
	b=alhZzwKQukP1xjeFc+fsQcmBXasLycKF6IEXgbcul+A5ac4OyKTUs8rOf50F4Yly
	3bYe+SxBiwN9HKcEM1+0YMew1menGmU78RKWk9MhaqSmekToEy8KSQFGOWUyXhC+qdW
	GooYsb3pziViK7lgo/jzEXaQ3y4DtTbCiSdS5ZFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659074452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LRDRi9dLNSUNCGwv5VGbqbWa8e++gNmAxHmVRUkV9Ic=;
	b=SLj36JiPnuTdaCHEYsXwZZ3xAhuh5xC5U1UQI91yAx9Bx7p75Vut+O3CK0QZ9cx4
	qNzAhA0QXoYEM4bUaSpI3d8oIqfGYq8J6CkAS8+/yJT5DcYbnWPYG5DrjcGLZtLGcAO
	a122YeLEQWUtyZPJ4p6smzKQN20bpBz6FJVCDvKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182488b1c42-6bb4e4fe-c881-49b4-ba54-3653380b4ea5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a135c7e3dfb52ba49d079c6a870844e8b62f6d63713db931ea8b0494e6132cf
Date: Fri, 29 Jul 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659074452
