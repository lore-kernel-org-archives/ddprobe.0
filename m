Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282E820E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658775412;
	h=To:Subject:From:Message-Id:Date;
	bh=L1wbzQthUHaVdDH5FWF7nes3i0O6wed4qcqzCNbi8K8=;
	b=iR/XL9Z1OeUotz4jL41zqFVF2MTSeoMCoEu2i2rX0KWWq5UdH3DHZs6O2JxJX9hz
	FOAr5BmV3YpaR9Yzilnp2+wOLWkLxXuclrBey0rgK2/9m69BnssRy+BMpZJnRWhn3Wh
	yWzjjm1ZmvCqkQd3LFNA16ZLQ6kGtFDIDjRDTpaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658775412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L1wbzQthUHaVdDH5FWF7nes3i0O6wed4qcqzCNbi8K8=;
	b=RG8zaz63+03fVwL9SlJHbszn37ijWcXtojULhD870bkF9GxuvUD0HoB2Pn5cbJEw
	L88vp3lv8LkZAoJFihJy6tKCndqbX1P6kl8SdQ1VGbmO4jU1pAgi/pQbkpgJKwClc2V
	mpzlIadoOAJJJzGP2MyD2jgB5vE9Oz8Q+IAoJVDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236b81e37-7d6f3942-50a0-44ce-b467-ad7e133fba94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d93f9750fcedb86a51eb6a3ab836de67d857d4dc93cc6fcfd869db8402627ea
Date: Mon, 25 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658775412
