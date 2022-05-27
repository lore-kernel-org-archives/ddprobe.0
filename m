Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F4D23A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 21:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653688679;
	h=To:Subject:From:Message-Id:Date;
	bh=K5HSVbSLQfANKnJZ6SWm1hKZeZGcEv1tj4aNqp8dx0U=;
	b=OgAmm5unpfxx+Cb8yksXjKRCnv6WTOqEYxfuaGNsk01bLDWGwfOCo3r1qWtseEar
	GIHNwmy9xYiU7/qzgW1m6PsjH+b6lNYMIe30HJKZQrb6Toquu7XlLy6M12F9jWKcAG5
	G0tP4i/JxmcEXl9fk13ycrYlYasyp9VEE4AhBGjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653688679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K5HSVbSLQfANKnJZ6SWm1hKZeZGcEv1tj4aNqp8dx0U=;
	b=ZqtD5QmbSXDGrOQt0Q7jPAmh9rGGnP+f5aS9sG+nF3SBhigtO4GP1qb9nRVRrpZ/
	9AkPvsRUoAW6bHnSSBCdUVTbFnSPqartwvFz6dO5zTukS53N9FuK41bFlCk92UXUkz1
	VMufoUk1wJtYDNhuQGCfJ9k7Pu/WkulajONAbScU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810786bc31-64c21460-bff7-442c-990d-1030cd0a9dbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa27092340a225e66d2a10b8d62bfa1bae6401b27bc0d775fe1e2dd22ff68e40
Date: Fri, 27 May 2022 21:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653688679
