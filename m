Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE746AA1
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660757452;
	h=To:Subject:From:Message-Id:Date;
	bh=MxX/ZoRFpuURQ8XX5BsQ2W//Uy/On60P+xR14WqWg0Q=;
	b=T9+J8VTnmbOqx7GL1AnOM0377JAiUWCwSOp2wwa6MfesVzXIjslurwIQ0qGtGhbD
	PURJaZoRgeL0WjF+wi9dUX7uk6L8RzXP9rKstA8y6QeaZEHLsnIVEbeV3XVQOm0pMmD
	NZ31BZjj89dtX6qgQ9QD2sL5nIfUbscKC50ox/G8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660757452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MxX/ZoRFpuURQ8XX5BsQ2W//Uy/On60P+xR14WqWg0Q=;
	b=BvotMswJfzHmeWkPrDVBHolMSZerxtLeYAP24bVq/voGh86l7EARttanOOgfnFNc
	Svb6BE5rP4Wsm30SEKychscILbtuzZbsTjnobpLXmR+NRfWFJc/sSy+0dhQlqR+5FnB
	+XNsrhzjKdvgfgpX2xanu6UWwVF71PNAnxC2bnWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182acdba75e-3445a9d7-570e-4902-bf36-2f9e5c4123d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c47505b1ed74c96a8f11ee16ffeca35c083d89ea70d8060fa75755cee9cb3ad7
Date: Wed, 17 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660757452
