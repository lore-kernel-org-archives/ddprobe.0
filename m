Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A91370
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661071252;
	h=To:Subject:From:Message-Id:Date;
	bh=kEWRmxYw4z9nbTIgZAmZaifHe61uZdQPt/HojYVGzek=;
	b=RolHZm9KhdxkVn8mwZ+94bSu6LjTo3TLt6/v1JerCyAUawtzkI8mf6oDGxWspcFz
	H5gljjoHoGaUDjhVE4VUCOIgqoh9ZkLT+JZKw1SJCWHQZCH02qGqWV6kBAjl/98NcUq
	vmraESc2rzbQ3vyM2QLzvl0WUMmS8DsvWHjvDhP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661071252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kEWRmxYw4z9nbTIgZAmZaifHe61uZdQPt/HojYVGzek=;
	b=d86ax4tVL2RytABqnZgAbkrY3TmrE5jkvkmCQz4LGPr9GBTXOKGxdiZQ+hrv5Y41
	FselgGw6jZWL5p7AO/2FbLW1aQBTdATUl4zLulebaTwjfyzr20tDsJhq1p3IWHzZfxO
	9/gE/DwYPNTMbr/2tYF10bGBo7xmkv0fXt4kHv40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf8fdc57-f09d3ae7-6ebf-4c9e-a2cc-80f24fe60aca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98ad370e8cc935e332e73fbb74fd7f9e64a2878b05263cf6068add87dabc72ca
Date: Sun, 21 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661071252
