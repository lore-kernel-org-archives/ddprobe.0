Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151C8627
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657276612;
	h=To:Subject:From:Message-Id:Date;
	bh=JqrS1NGHP64kC8xhsL7Rm7ZJCLbg6yDexem7CU/b/O0=;
	b=XIgOZi2kCR0jBk1M0a1vameIl2mIYTvESHa+g522VjHKcX/zie+BJ86K64PkcMQI
	pADtdZfFRewDCZmx+lALiAjOR0tZMaw9Laxu1KTxwynrctHEZrVHNUql1vRWYvDu9JS
	jzJFYGlGHpxUa/gJfxUk4K6sRfD8Yo4R7I0ZfSBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657276612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JqrS1NGHP64kC8xhsL7Rm7ZJCLbg6yDexem7CU/b/O0=;
	b=XL6b0HYhFxP2H9wtCKyJIQq16793fP693aWy3UsSaXXpMoghkBCI8xHlp+F9hJOi
	tgVckn47/Fnbau4TEz6OyFKoiOu9WGQlsjneJiEme8uctrsn9GDPz5/RqNDexHqrqyt
	02zeCLtIrlJzUbBLQ8+DErLXQ2I1fzgpaoVPGi4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd623e97-6e0a69c5-5b73-46cb-8733-5bfaf4c4681f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29f5a3ee30c5a5d290555b4ddeb3ac9c9a46a790f43537ad5ac112e0e2c5f00b
Date: Fri, 8 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657276612
