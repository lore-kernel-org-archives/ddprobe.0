Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F304685
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660075852;
	h=To:Subject:From:Message-Id:Date;
	bh=GsbN9k8Mf5NErM7Sj5V4tthGUYbjX+Htr+Qm5wqmAUc=;
	b=daRAdmBJkDqWmcGIwbMSXdx8sPpkYdULMjE+Xjp9CxmLIp3xsGo22CaUbleyrct+
	apz5Ir/wE4RyT1I8waCxKrPLfTg+aQWnB0zr2hZbQYmG4lInBGUK1pnybL8WY7dCGYa
	SICP9Z8AfAyhMrkMZTeD4FJ+Q71Ov3ec66dlhBXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660075852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GsbN9k8Mf5NErM7Sj5V4tthGUYbjX+Htr+Qm5wqmAUc=;
	b=jk9PfNVPyLQl+L/6DwhstiMbH75LRKq5dY7iCsGUayI5QCXb4Fwg9VEAmHe0ImTK
	tEfOmDyO1aSaDSwcmMDRyt4+er8Jv7+AfmpLa+RWufjUIxsqXk3ClRtNltPo88X6rqh
	HKOsrahWEVEphHOYhHgvjQ5T8wskRO5pgkkz4WOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182843b42f8-250d6bba-f959-4108-b0a2-b17ab5e03d33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3184253284ab59377ba01c740b7bd868ee4ca607d79021ec5f58d2ff586691c0
Date: Tue, 9 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660075852
