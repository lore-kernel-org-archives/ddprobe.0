Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6671FBB
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653734039;
	h=To:Subject:From:Message-Id:Date;
	bh=lZsv5L0nq+St01M8ps+zHmggkhrtPXFO1j1nzJ4hv+M=;
	b=PQ/iDWKtZUY2KTbHeotUpJLeHjBhcFby9/w3PR2MWVyiz5d+H3AI09S3CzCR6SuG
	bIzLN3AyePukRWnqC1azpUUddnsIgRIy+yGjbQ4b6NKDzCNnA9VADr8ilUuI0aDGP0w
	9W1EBUQudwMkeAqoUaQhvogrjqHscNr9yebAY7O0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653734039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZsv5L0nq+St01M8ps+zHmggkhrtPXFO1j1nzJ4hv+M=;
	b=KTAr1TzouHSt64yOGPat6FW4I5jo1ui0fj5IQXr12GUMnw6yFrUHRcHt70Q0K3I5
	/1G3mvifbKH946UL4OEAJIsxWXn4SGqGlkbr9KAQErCyDLVEap9ujk93EsS4NGVlyby
	NXC/BB5Edfb6rLJJklfyqd6NhQds+EJs1NYHAc2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a3adefc-541dc899-2706-48fc-869f-449a5918aee3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 577ca07eeddcc59095444a751d95eea66f594cf46696e2bc0914dd304ee9bffb
Date: Sat, 28 May 2022 10:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653734039
