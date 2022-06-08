Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFBB7B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 09:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654681439;
	h=To:Subject:From:Message-Id:Date;
	bh=vhNWWcJmoMYFEzxR5KMJ1F1BUh2hE59XrIFPW1AM1us=;
	b=d/lWc18SVqIW2KpiGiTfIVsbNU41SDlDUdlTFvGOQIZXSabby8ct5RyWGq8sVY7r
	OhOyqr0c6U75pCWuRc3n1xBgkloBQ9puGnK0tO4P/yZEdxPgByAZuBmm1IS6fXJFQCk
	/HgjL7AnifbDLAWofCiRX3/xZiVLDL+HxAB4OgZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654681439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhNWWcJmoMYFEzxR5KMJ1F1BUh2hE59XrIFPW1AM1us=;
	b=azaeA55DCuxOe5Po1czxuyOQQQ0MFfNm+j81vaAzWYrb6QoKR71Xrzf5L/VKihq6
	89rkkfD+H7MTlpanu4UH+psj7VR01/OK5/SEPQt/uQjkaZeUjCEDzyjOKw+ja99+qxv
	1VtMiBNOCnnWhDQg5MwmSKELQXReJ5yKSVSrV6mk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142b30c20-09d26618-c6bb-4577-95e7-698d75080da9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2999873fc1bc8ae1f55985396e42b3ee30c1862794d2b20080a1aa986665257
Date: Wed, 8 Jun 2022 09:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654681439
