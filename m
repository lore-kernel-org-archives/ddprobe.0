Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DC37477
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660779653;
	h=To:Subject:From:Message-Id:Date;
	bh=y0ca+vdtK4t/aKNxbbh89KgIWpxzGH2O0COyZEVG2l4=;
	b=iIUxig93K3Y2Gw5N+3jWgeGotLaOR+2dhNH195AUbqA19sNzYf4k3ylTy0V48IOR
	9ZHD1+3LJQz3HhDEixWqEkXasvOeqHd/dTfaSYKQH6GTZg05nlGkeGMwb0AXOcOjHAt
	AmZA9h60o4uTotE8UcJiLiZwHM8QjWwNyh6DdwRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660779653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y0ca+vdtK4t/aKNxbbh89KgIWpxzGH2O0COyZEVG2l4=;
	b=KCG+lXPuTKJVVr2af1UUFjB6CuQO4VZN+t0m8h1G5mivyMIlLdZrFzW4hg4S44DN
	4GdogOAuYLys9PtWtWpzJd93tGeaWCmi1bAsmjRL53LZmTZvy4Y5owH75B02ikKyXLf
	rOeogAV5Q2doAWFqqNYej1rjZNvgkvl148u41gYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae2e65e8-8c53428d-3dcf-49c1-8ed4-99a3911c3627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 884b3cf9adda5ff010b3b859d854ab96be4ad9768f65a650dcd1e512a6ab2cf2
Date: Wed, 17 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660779652
