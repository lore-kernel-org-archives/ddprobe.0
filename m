Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D3C17F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657865212;
	h=To:Subject:From:Message-Id:Date;
	bh=Jla7ENVnV6N00kJQ1tjzZNJVHyNXhQNrgt0B7sqtc9I=;
	b=KAuws7abrAmfeaL7G18uDHT6XbpxKvSr7uNTliElQB+IyskRkeWaZyzJF67z5bjA
	IJkyBk9TuaG9bB6krhw2VWGxufyIQcAHQrXKiukWuPfus8SBcmGYEAO5mKmC8KgZPLp
	2OsVCPGgN2IJp2RQXTKz2N1v979wly0OJCC9itoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657865212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jla7ENVnV6N00kJQ1tjzZNJVHyNXhQNrgt0B7sqtc9I=;
	b=NI/093GbMcDu3ttuYO7OwSXl5zif21PV8xVbliaXQJQIJGmlv5HIcArYgPh4ts1D
	sMpX2GmtAXyHqjIPVcSY4EM9lXElNtXgwKQb1OTGaQs0Gr0GjQnqFBxhSOciXudbrmW
	lCx7Uonh1MMQ86xG03ZxMHLUYlcPi9QRYopY5d7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200779199-66cee6d1-a91c-44b2-a5aa-23c54f013348-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c646f5158ae091e6a5b07f659167f370907c578c020aec7148f6bfdc1956864
Date: Fri, 15 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657865212
