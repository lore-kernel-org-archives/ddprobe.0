Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408631FBE
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659864052;
	h=To:Subject:From:Message-Id:Date;
	bh=aku7C+E3oRimLnotKInwtWvP5pgxWnLMRbP/s+c2eSY=;
	b=WTA2TIAB6q2NdrJvOfSXpZZIA+BikBuG0xO1eKelMMNfQZi0P/CrisqlFzN5v06q
	dfy09kwdPci/rHFTrdI45ApCzzcSnOdhLuphtmmZczINekMgxJHDgvcFRLD4G0jcwxE
	/4M60pnFKs/xJ7AlAjiL6bbsfpvuD7dPTkJfl9aM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659864052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aku7C+E3oRimLnotKInwtWvP5pgxWnLMRbP/s+c2eSY=;
	b=eKpQFJhTCwbYQW1g5sSxC/19xP57902IHaQ9sSqrnMIVUdUx7ryOL5gML5gSNP+K
	GFIcb+hHAJ9VkOllQEmcmxyFXAWBUEgiFgkJmIZ9Mktu0GZgRV3Hl0JsMYKVUmCuLTU
	8309izO/F7PX/kliM32qzOpazRK1wPDu5pfDZXTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182779b734f-3e1d15a0-cb15-4fd0-ad8f-11a21445cc47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdf971ef0173a54e522eddc849c6df3590f0ba65623cb37a861cd1c64f0b9076
Date: Sun, 7 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659864052
