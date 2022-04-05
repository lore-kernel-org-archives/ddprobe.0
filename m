Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDF817D3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 11:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649157838;
	h=To:Subject:From:Message-Id:Date;
	bh=TZMz592LOykk93ftaGTtGHKO54M+plCeOajl/PLXtzM=;
	b=kMQVqsYkS08n27Yt39RzVZ3o+q9tMDTQk3k6DtNlasOYDmQTEKWy0Se0/i2UAyk+
	b75cJ4J4DIjcu6zx40SWcecf7cg4Y+kHL2zKn2mf44haLl4swBzHnEq/U1QpwDF5aHH
	6EJE7tHjSN/5TDWmoPg67glZbLF50YD5DQRaT9Ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649157838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TZMz592LOykk93ftaGTtGHKO54M+plCeOajl/PLXtzM=;
	b=BV2DzN+E9EGj/DdBRN6io9PN/Ph9HUhtGtAYoad2PI5K+GM6NE/PYOmeFk/3E671
	3zTrY+Z8qQuEdznaL+y8IzkRQH491md59cH+hE0qp10rnlM0bF9QGpFKhrKj8JLoS0l
	jVq28RGVKp5sLlk9YZmZSmcIJXM3VlD6gMJ1druE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff9779594-83131b35-e20e-4dbf-8b7f-5352044f9989-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe2accde73bae9c06487df214f985b62e7a06d75aa3e0d86beb54e22ab1aeac
Date: Tue, 5 Apr 2022 11:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649157838
