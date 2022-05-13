Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9129220F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 05:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652421421;
	h=To:Subject:From:Message-Id:Date;
	bh=GlWnssaYsIbE2p6nZGSavb3PZaid+dnHFiZ5anYBNn8=;
	b=e+cTHUgMoDdnCcDhPSfyXqDC6mv/HnIiXcO16Rn6b22M3KODF5mOiTnkOhLR1L6s
	NjqMFOagutLz3Pvsa9c7VvdbOqeO2KA4b3FT8RkdWWyxCROCIjWmNvF8gjk8+JSJY+0
	M32TCbSfteVEesGW4L0bRcW4k7vMGT1deOmQW2Bk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652421421;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GlWnssaYsIbE2p6nZGSavb3PZaid+dnHFiZ5anYBNn8=;
	b=PO/sFR4gg1soTFeCBpdKRA13GG5ly5zFvhgQ4rOxFTjeLxAhjj0Iii/NJWLBtC4d
	Q7CZyR6Y3X/PWbKqU/V/8yXUzVV55CETaYqIluHqTQ1PF9irfERimIUOgiJnobx9mV6
	cbJ9hCsL17LFzZt+by8H6BcbO5FU8MrEVH81JmPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbfde10e-6a1fae85-ce3d-4dd8-a2c9-ddb02f2d53da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8206102e25a7a84f7d0695af4f1bd39c74c54ab5bb0de4972ee237dcd7347611
Date: Fri, 13 May 2022 05:57:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652421419
