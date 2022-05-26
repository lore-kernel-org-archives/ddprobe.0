Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148791875
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 21:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653599459;
	h=To:Subject:From:Message-Id:Date;
	bh=DgNJzHppOoOh4uJ04X9/X6djkLa8RvlZtzFHnpACjCc=;
	b=TgS4XYH96OVvS29JDoWrSfnp2vITK1/XLxRLVoJ+Au3JDWwfc2OEKlWVs0DYyJUD
	o6yFNVQ6EANNBIVAqNkCPRCDrjSl8YF5x9+20lqfG6iJba7PQjHHQdMSGXLTRPtShZ7
	b0HPBMxNH3waFIuPAXuSx3J+DApwIQp6adnZDNpU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653599459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DgNJzHppOoOh4uJ04X9/X6djkLa8RvlZtzFHnpACjCc=;
	b=OkXgNXZ8mLztOav43S9G+TDUKK133FNWb7f0oCTvOyPF+RIl6yfF2DfacCaSU+Ha
	fUt5Nu6XSq0LS7vaj+8Ta+XODjwpqHVGjXtsuZy0INFoX2LS0Yalu+g8thMW5qbRDq6
	m9Ht3ZipJGSXcpwG2TMF6ohMdO4zd6PZXax9qaOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181023557dd-1beaf380-c937-4f04-b2cc-505f0bf99871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 744709e3a28838867bab69d0f427b979a107867fbceec0f9922e96f741309544
Date: Thu, 26 May 2022 21:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653599459
