Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E324B7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656954412;
	h=To:Subject:From:Message-Id:Date;
	bh=CnNP2VfHWW2wUP/U2Cx5pXJKAleOfK7ye9FZPCYStb8=;
	b=Fe3J/X3cRLJJeeSqzkPliv0D7DeB1aZlpBJGD2zGH46Hi/EgCPjj/vNd3cNF41C6
	VEUdrHuz7h6v6nU2Gwis9wrVXjzSOjlfANw/m7QDCIE5kMfyh7vFvRb/wzR9N2c/kRM
	lApxgC6u4ZcCWKDs6uVjYXaQdn7KaPUMBX6CKo9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656954412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CnNP2VfHWW2wUP/U2Cx5pXJKAleOfK7ye9FZPCYStb8=;
	b=jLF2kxQNPGxIfqrGrL+gwBlpZPhNxZ8Bmjx8+punDgpSrdfryLL02P9gyDCzshKD
	65PwHdAeog0atsrjp2qsYqm7qkd0YCqtYD+Ih5quLq5X2A0VAuC07rRc7oRNKd4V2nE
	CmZKKjYzk8F4+NcWy13K/4eupZQs0tI8akJRZwp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca2ddcd0-80a76fbe-722f-4f95-b417-a78b748f139c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a938e43d8e5827bba9593d341c78a56ed5e570b9e34c257fff00033f26fe4ef5
Date: Mon, 4 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656954412
