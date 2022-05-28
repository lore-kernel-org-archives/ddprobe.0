Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E14D23B2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 07:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653724799;
	h=To:Subject:From:Message-Id:Date;
	bh=pSVlwpK+cHUHvIfVDIn9T+UMDKzKL/O1nwNLNyvPmJs=;
	b=AMWbs3ggwBxst2w4xKvMjsG16tgR/Re4XNxzKyljXUB4qh5PaRt5U1ZR0t+o5LJV
	s/iwBKr56lGY444FW9HplBH0u3UIiOnr2F/MbLATJA1HMk/IOC6r6vI67N0Pz/PiVrS
	Dk2uSTv3IX/7K93Y+m0UzHCiJUqyM/lTjr3nvVlI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653724799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pSVlwpK+cHUHvIfVDIn9T+UMDKzKL/O1nwNLNyvPmJs=;
	b=PVqbSIh0Wl1KKt2fwqB4DfTLZoWkgxmxqGE0R3rNoB9j0o7yBTBTkS9CqeZqpXQS
	G3NqEfcBOvL5IJMtw6L+Sa+ZD73TmiogeupoY1xV7c5ykimripCGXcuw6Ox7DdzGTIA
	nTrXsMYDFCB5ro0TwPPVNWmrVS/w+3O630IFavPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109ade130-998bb03e-daf9-48af-9fb0-a445b67d5af4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b97b3d86038f2783badfa26a9891abdd2b646dd0cffe310d15397b50b7b25af
Date: Sat, 28 May 2022 07:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653724799
