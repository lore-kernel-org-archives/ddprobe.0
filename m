Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C55257D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660419652;
	h=To:Subject:From:Message-Id:Date;
	bh=807yN0tkWPDQwOwWjBjzHr5hXXnk1XgpjfiLKZfBc5Q=;
	b=gBWTaGGO4J7XsGG7otaF4+/dotZLxQDJGrZvEAR+mHcZ/XVBMu80pfowbXkji23D
	gARXXG+EAxx13gkUr3RaygFio3s8SRi/AFij6C6owUxtGn0V6XNMj0H+4gO6F2Z3t5W
	q7HoLirK1Xb8nhHBtzYNhnGdQwve6s8TeLQogYjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660419652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=807yN0tkWPDQwOwWjBjzHr5hXXnk1XgpjfiLKZfBc5Q=;
	b=fjsHjo8duUYBlRVMN3PgrtUBuH+hiGFwG2Z0QE35Rta4TwY/B6CmahVytGPnc/Hs
	2vAPz5F/B1En5Q72DVuogDalUo6rOHhkyN/AI9ZljdnX1qsok3j0hiE8ANjh0fD9u2r
	hgtUyHVwLH8/VNpyxS6smiYRE4mKDggtGWq4eHck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298b93c0f-afba4c93-8a51-42e2-be98-273b2890c82b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e318aa62eb6c125f275ca25d1e24bdf064d56da6668db3c0699a58bd3eb47899
Date: Sat, 13 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660419652
