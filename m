Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8934C15A7
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 03:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653796680;
	h=To:Subject:From:Message-Id:Date;
	bh=8VeczEkcskn4NU4IwpMWzNALCXgo3TTREXLWuHHldd8=;
	b=TBrynh1ojtVJskBcymS299u+pXiQhj2RIBBSS5xix88cvO924Vk+/M0GXS1p/VJN
	JLAa9jC/Dqevzl+X385jiAxPFUNrV4YRbywbnaicOmFCQuqdN0gwUZCE+/zUWNjCvBv
	rxrmdeCT3mB1CC4lw4+oh+DCROczRfHMkQsdN7bI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653796680;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8VeczEkcskn4NU4IwpMWzNALCXgo3TTREXLWuHHldd8=;
	b=OVLzKwcsugSQYmwX6yRC6eCm+AOCZCowGPxEQPip6WJU+4GshCf8rWVK0y+BCtmx
	EtzEpd3L6SS0zYXp9saK32zlnVrfmNKnxv1YxHGlsJEE/h2JOVIXBvT6u6kquCAt+/o
	boeT6uKz2a4UlJ57N3wC/9ywoiC0A8Q6qfYcR6+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810df6ae86-e7cb82ca-a1ab-4ec1-ad68-7c37b702f29f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1f3f693f2f21585d20814a15e2971ce3175d7bd6f281f717d7a9710ead2a5be
Date: Sun, 29 May 2022 03:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653796679
