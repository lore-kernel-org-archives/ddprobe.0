Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEB17F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659475252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ltm/fMsnZLmr6uzDPkqKKnD9MZzDHc3qATG4botyZOU=;
	b=apCvfVx8JEmZ1sIlqjtua7SFPYUiHtR+v39fW45UoJwSYyvFJ79b0JLH8TsjLEzC
	v1KNDTiqG/uz2AJLjg68DS/kpUJ4yZag/c+pRGHP/Uy1xZXhRgDjTaaWOyS/BWgDdDP
	GH//hZDYoQOw1ysrM9RBX8VAjC57Dv9Ns5cl7v60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659475252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ltm/fMsnZLmr6uzDPkqKKnD9MZzDHc3qATG4botyZOU=;
	b=CId/aIxXs6cAtnQToDiFX3a6+XvKdJ6pXiGL49AZujGq4kjI5dSmFsrO8sZ4XCxm
	CqOUI9KKnK6p6uMNdXoW5ybkqE1Bf1SxphDBorkipyVxchunYxWUCDBIsP8uWgvj8GP
	i63Lle9Ov+vo2bC+RFeCr8oaxqWwIa/L4MnIHGRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182606ed53c-22875632-eb8d-4d3a-9360-7744399f4d55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75ceca13b045048e36b30d0342d1cf3df84b8c4c1d4c14f034eebd5fb0a4af8f
Date: Tue, 2 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659475252
