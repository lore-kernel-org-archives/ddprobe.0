Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093DE7B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658282212;
	h=To:Subject:From:Message-Id:Date;
	bh=Wdby1jd/co5H+EX9G7UJYChIk1m+Pm8Rr6dCR2Rr6cw=;
	b=cHa6o4izTbQaS00T16K9br38TVgAT4N2SNNAXx3dTySJFGnFJM/L91p+k1tadw+j
	IycTw+lw+yJG9F3dlJZwECNcpgQh6UIGZBFcqV0F1VnGFdX70JZ/SYJd9odBw391VKx
	AvqnH3sSKjGpZQEBAfStwRrvUNlC3u0cRcLGaulI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658282212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wdby1jd/co5H+EX9G7UJYChIk1m+Pm8Rr6dCR2Rr6cw=;
	b=a/oI1WJwICUBcxabXzhB52lN7roGyGO7PU2Z55vqEpYIuS69sWItUD5maNvpZC6y
	LzIc4G1YhhWH6+k8hOiYYgRrK2HBswAV6QI07nOoUZ9XGgv9DDaP7STJPC6xpyopJ6K
	/yXwDMZz4LUsgZYDbwD8A6G6HhwrK6v/csNeh7qE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219527b94-c55ba8c6-185b-4e13-b573-c01bad87fef4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6653b3a69ffdbc61ea5197f5bbacc417ffb1eaa2abb71ccd06932b1cd09c61ce
Date: Wed, 20 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658282212
