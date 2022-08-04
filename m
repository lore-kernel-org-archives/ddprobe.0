Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539F42585
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659627052;
	h=To:Subject:From:Message-Id:Date;
	bh=tLtMCuBdw4imXOkbtFP3eqechCmN5MtF7xk8w7tANvM=;
	b=iZqUWC7+T9ljVRj5rvR9h9Yb5s6OL/u6PpHRB8AFYYEnhoWzAk9Lraa2j0GzHZ2i
	9LTeZIgeTH/oi5ihB89bJXHNyKdLlNcvxFnHdheAj1AQ85ongqRz8tCvVPCBE5fbAiR
	/9U8ujgE6SyMcfdqlUkB83piDCraR+Pvl1lFF7Ac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659627052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLtMCuBdw4imXOkbtFP3eqechCmN5MtF7xk8w7tANvM=;
	b=DGGq3SvlafOZ+IJr0AesvwyqzdpOm2FPuZO0eLDq6+5nfikQbTksgeZg7P5TKbvY
	Ts+30Y1NfP7F8uTWy0YhS/RMHUalqFZr/TM0Vl8N2fOptSvgm2sjt/Dtb7QD0/6lEvS
	shfBwkXn3upZhDyaEufNwLU0UNdTticqpQ989Ts8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182697b1e0e-480b01f4-3f90-4bf8-acd8-486035f44a08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a178d3b463d647fbe1d717718a26909a2ffe4232840b3d29d542088e840958f0
Date: Thu, 4 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659627052
