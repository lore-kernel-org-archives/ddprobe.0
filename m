Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154C27E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661328652;
	h=To:Subject:From:Message-Id:Date;
	bh=ocNplg0QzJFLkR7bxoHGAqQdFZpg83BuF6wIyOIMAp4=;
	b=cHF0UGBqhTEjQ9Fjnn9OfSdn5FoLx65/393M+nJ+9c7zGFCXNRB9xkNSpbZ3LlMq
	IFXJGO5y4gRcf+EKXsctWZclKOcAhO7Gd7b6Gql8ZfGxiKNn8ut8B/cKYTTTijMa6fn
	S0An0xvjl4ubFkr2orQ4riTZX/Pi4KHPsSqkWTHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661328652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ocNplg0QzJFLkR7bxoHGAqQdFZpg83BuF6wIyOIMAp4=;
	b=JXr3VWkzWK9145O1yjCGICGpfhaVsRenpuWdDXe96ed6PGq1uKw33JZ9OQ5C6idE
	LQBPHKwyk+PaTccpNhxncMYTq+kvkrk06WRCi8O7ISZRb+GUK4ymSfjBYQps2Fk5/c+
	fDhdKKkMMGfgO1szUcUkjehEDv1G4HZz5Wohdjyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cee778f8-03e957c2-69f7-4422-8f27-8bee9a669c24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bf26acfe7c8a251d9bf920105b0c58744ca5eea802be1f78f195cdbe6841d7f
Date: Wed, 24 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661328652
