Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEE17E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656482212;
	h=To:Subject:From:Message-Id:Date;
	bh=N0Pssg9+uGF1cB4vG/vW7OcfUknhcfdp46ohMbS5Ie8=;
	b=Abr9PFzJ7ZKpU4ycKH+EcSHYmsTmaH843E1T5c8EP785BShYFmfyMUzHbVOn1v5t
	9ANBIbLQk07V0WZBrVo09hsdCwsWJVmFFJgH4O/fT8w00FBUOXXHQYdbJf5gIToBiMf
	VjcSFDTYQYmlWIn2TANkWByLQ9ELNz1xa8cYDZ+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656482212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N0Pssg9+uGF1cB4vG/vW7OcfUknhcfdp46ohMbS5Ie8=;
	b=c5j96VBBisgf2a+bekSCB9kvvLZ0+D6fkqoAYRNpowgjel1EKXjLS1YyF9FSwmP4
	ZHk6Nt0o+5FBGQ8Xexu7MHt7KbKeVxl/gJcbKroIcBb1M5vmsZrrTgQex+qxf6Dfjx7
	EvKS+hKhvJyVn/3vsoixtIHoZ1sPxiVDjOawW1Po=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae08a9ba-f9056bb7-dd42-43dd-b011-f37f69b36d27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc394c83fe497026a398043ae42c902b21395357a9c60bbeed652c02e6022d6d
Date: Wed, 29 Jun 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656482212
