Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2860F4C84
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 22:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655504219;
	h=To:Subject:From:Message-Id:Date;
	bh=kf1YAEYyT+hd8xDrsS/VZtBVrauDxYfomAiRDoTZesk=;
	b=Db4F+UmUxhUrelIveDkXe1I6Zjz1tKedCNeo1D0fLGXEaBA/I8wVf/pjVk7g1YNx
	5Y73SziwHKcR49VdPRpAGPc94dz5ow4hHQUcSglwni91hXoie566L5uYTBDzRmnUwvo
	rT1SvqsmGpzOcxazB2Lx4HJdHtWZyP8XhINGgyQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655504219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kf1YAEYyT+hd8xDrsS/VZtBVrauDxYfomAiRDoTZesk=;
	b=E0ySqHaAKdG8gpyqrqcoMWO+9zNzZa0Q1HaqHnntBnOWWTJBa4kWMnqBg0pmkhgv
	MwESKAIk01w/uJxRyMmfXUWA/rCE6yRH8jxOVPmJJjPGR5mb6+4F4Y5X0TSpkCbrvoc
	AzwnI5uWjKlCuVg41PPSBdsT8IRpEphW4i111Td0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173bdac8b-86fc7737-03c4-4672-9e0b-38af713f5b4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d3f144c1aa4a7e4bfaeeef660457655ed925457b3c89c7de87b4fd0f3a55895
Date: Fri, 17 Jun 2022 22:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655504219
