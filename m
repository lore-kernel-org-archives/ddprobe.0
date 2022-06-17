Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D0133C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 17:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655486039;
	h=To:Subject:From:Message-Id:Date;
	bh=SxlV0gRTVVKyVKHmsMzHBMVsOeHSkRzRNasPgBVKLak=;
	b=ksnt0B4wM4iOjNw/ckE4N/QZcFE45Vb6/ryAjVbqzkbmlBwAFBy2/pd1KzKv4J2/
	aetJJO0p5SydV93KrO7+B2gG+E/i/cY2Dwk6a1PcJLtZGcD8WKwcMdqPpEzKX0crih5
	eObLQuxiIeNltYAKUZvk/ZAMN2FASRWpA+s9hYds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655486039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SxlV0gRTVVKyVKHmsMzHBMVsOeHSkRzRNasPgBVKLak=;
	b=czlRz3RDnPKONRP7S/oxMG6Xzko/eW3EgC8Gp5fDWeNKDqEg4c9pT+oVteI1iC+t
	KwkGBZE3/RHHpzINrD5n96fB4qU5KGxQrqGMFmOuLe2L1Ix3OOhqYDKqZ9zTA4u/k4b
	PPNMrvJLVz8l+O4ORft9mfWK6AFSNltwt2I3Ir9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172a84501-9e036a5c-354b-468e-b7a5-4a9b7f211f05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca3176b332f5e3052513d958ac1a6ef25c339c285cdf0386fde784a8fbc75942
Date: Fri, 17 Jun 2022 17:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655486039
