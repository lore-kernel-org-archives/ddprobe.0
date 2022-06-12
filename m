Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A621845
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 21:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655070059;
	h=To:Subject:From:Message-Id:Date;
	bh=Gg5HRTnm9wwqoax0bi34+0YvjBiocssR+fz7LFSY0tY=;
	b=C2ImB+4hH4+2hDGWFIY9W5QPCmfNw2/CbYkM5iFhHFY/D6XDclHcpgioV11hHEx0
	Q8+GdAT9YIeut0RSYz7+FgTsmWHGZoz1ZnalEaAiM3VY8GD0ulEQahXXcw9a4x2Xtio
	0CO0DEBjMaxBkBxaj49HyWBPxYYFYrmYy6lXh1sQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655070059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gg5HRTnm9wwqoax0bi34+0YvjBiocssR+fz7LFSY0tY=;
	b=gtBCVcqq+VOsf/GbmI/ggdphXMeaaVpFBqHBHE/75Qrlit1HOj0e1Zhcptm7UVnU
	aSz7nBiuiySRhwvxBtH2JniZeMBBCe9Z82PkMIxqv12HXjty1IhHntO6C3P3R98ESGe
	T1mZI+GLw3EN8NbvvV1TXLzO8sUndHfX1JVv0UiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159dceafb-c1f9bb28-f53d-4e2b-ae4b-f8bca1418162-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f39bb1f0e7cf61f40208960812748d204e27a865695366922bd9e59a35e133ea
Date: Sun, 12 Jun 2022 21:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655070059
