Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435AE2F28
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660207252;
	h=To:Subject:From:Message-Id:Date;
	bh=q6kPDEkeAxf1e+EEdj1VWk7+ubYh0nR56/1zgjvCH2Y=;
	b=RrVGa8eOIhMAyZqFtCFnSqVk/IgIZzr7Z0/x/COktk8eK/rU9VS/lBMAbOvEHDvl
	EV2mDmnoZyt1r2R6BvAksKgM2SUeKjDrYIHA6lZQNrasEFi+A0rgbjVOkcX/1x8Yc0S
	Bin0MqZhzV8LhjTPZXlgL5cJ5z30JSY7GKkVNlTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660207252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q6kPDEkeAxf1e+EEdj1VWk7+ubYh0nR56/1zgjvCH2Y=;
	b=R5zLXqbZlLA89G9WwlcrVYW1658/bdl7Cui0KM2G0fQHuOWoYhK3r9PTgltzKkHd
	CvLQJDk8tUzB8eK9CjFoz3BxT6J19LWpVUEbF04ZXVh7+PNyIjjJH2bFRbh7xvehFfc
	Frxg8NThqXHqTl+83S5kjNGLo/20Ln/yWF4StGgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c104435-5a50a97e-8681-47f9-91cb-825f595b669d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b970addc15167798d7df60ccb8c9c2f52c837adf8e388f56f1a7f4fc5c06d07b
Date: Thu, 11 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660207252
