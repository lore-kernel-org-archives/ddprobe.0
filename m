Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772620E1
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657786012;
	h=To:Subject:From:Message-Id:Date;
	bh=rdAJSiOBXciA44o/O3r2/zQpA3+3VYDibCZzbTkLMoY=;
	b=IIibUkKk7bgmmr/GNvYwRN7YzoJ4gTME9LBlkOBH1yomnHhlU3XgxbqqDVyrTe1V
	eBzaQAf00iB3fORBzDqy7+X61GjvRAhcunEuLlHJJD0+Jtgp+LYUMbOj36uRMjwwxPs
	j19L/SAX59VtdFTxn5y0uT6r1RJfGWwi9CcDwQZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657786012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rdAJSiOBXciA44o/O3r2/zQpA3+3VYDibCZzbTkLMoY=;
	b=PaJ12Ge6Y8cKIzIQ7X4407o5+10/DCckX/gq3hof9dcY/OoQBfhGxdZK9ByvlYNS
	QnjbxEaC2BHd3uL/d4dZ4+CXRbXgCVrvFqZcgi7y6iGYG+FwQquuKTBKKDw2vriB8Wg
	WIyli9LAjVyg+EZXOU1EW9AlgZVdDeMOP/d20ddc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbbf1294-3bd1487b-b398-49fb-8677-659b7bbb41da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da5beefdd480b68ec813cd7767b5072e61cd85b9af0728e57841c4dd10dde4b6
Date: Thu, 14 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657786012
