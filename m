Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C027A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658995252;
	h=To:Subject:From:Message-Id:Date;
	bh=3B7Rpymy9QwuJFjtHPH6914aWXoJ2nO6U2XdQ55PcCc=;
	b=HAcPXWbwjQZzg0aOf7KN7rYOZVTlaRghOJKhb6daSS83P0uIa4GTG28MbPsXtA12
	ph48o+MUX1r+D7xxVrB2kfWJ73J9mzboFQgO6hL8BqXuX2EtEx6ydhGwlnJohtb/JsL
	FjSiu7X743LVeYWmyl8OlUsu13w073bEX1xKcCas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658995252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3B7Rpymy9QwuJFjtHPH6914aWXoJ2nO6U2XdQ55PcCc=;
	b=FexltnfOnOQRZkQpU/hvbQlOmb4QZ0bmAZJzOLIaOw/RgG1fhdON/1mNXNJAYvFk
	llF2xNd/v7ZRqdT0ar1K7FHGatt92E6r6nSMGjBdsd9RDLbrUNjYbbkQERX3joY7CB1
	zda+wpGH3kwo2dQnF6fh8y6hTFsCBkqAtoNakdEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243d29d62-f2027ce3-0a92-412d-994c-cd02935f39b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09b7dc469ce5b0c1d54db10bfec1e6b9c4f29eb5ee484c2b9ac429d80dee4545
Date: Thu, 28 Jul 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658995252
