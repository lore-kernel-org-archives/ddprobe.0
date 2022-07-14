Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1345C4A38
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657813612;
	h=To:Subject:From:Message-Id:Date;
	bh=HRBMK6F17YUFOF6RRTf9itL+TEHnFB65dCIRGBf1Tvo=;
	b=fj0K+B1Vs9P7UnoLlg84ztpuIjuGJjqbP6hv3OyKcQnVl2oGYKnASVztQ6yV6AaS
	PfIQD1c46OgRNS08R0HXId6Nb0PPwP+OQns1S6ahJBzilrAb76O8bRya3dRDFbArSuv
	b7fRue9vfyPqI5Y8eVJyWyaA8KzBgHnGkaJuYeC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657813612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRBMK6F17YUFOF6RRTf9itL+TEHnFB65dCIRGBf1Tvo=;
	b=kzCF1Nh/rcRz27oNShkZQo6/AoHA1m44G2L2ZDGUeywHY0uGRjmv0h4cKgO2WHav
	tHlmtYWebcB0IGKIIlHm5wcKAAiH1UbvzxBlaCTg81D6ttAtJHHEvCqDxBOZYUyW1jB
	W6hNlFF8n+dHYGKcGratLT14/U+iVwRwfyMRHiE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd6436fd-415d1ac7-6ace-4e15-9f93-fd8db2492f83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64a1629cb6c3b47ea8fba955a44d1a09058199226d2805f99bceb9ebcaf4ff48
Date: Thu, 14 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657813612
