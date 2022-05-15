Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169FD7F5
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 09:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652607539;
	h=To:Subject:From:Message-Id:Date;
	bh=RdJWJ18u9tsVd3YK+4mHTiFsFvGs/vvAi4NArxrVSjY=;
	b=TfjFw+iTU2Q2h5MPECHHTLDrcgZ1t8Mm0Bez1y8BtBZas+QwfE1WCUPwY0bcimHH
	eZv5VOXEzkx9IzTCSZFivxHnqgszK6wcuTQ83AswB7srMc7KLxLP9OMm+cgIcxRK86J
	pg5nE8uOWpRX2/EQQtklmGXHhjTg0V2n3+eT2mOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652607539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RdJWJ18u9tsVd3YK+4mHTiFsFvGs/vvAi4NArxrVSjY=;
	b=NHLtLHYZHDrpZJNZ2IzeE9yCO818Pie+yv7Nk3J9fgWE0WHy/o+/UrqkaM7vBR7G
	kC/YrQsi1EIgIZ62hA/O1mKFK4Bpzv2LexLtbiYKh5RagGhJWFaTnsG+bUWug6hAWNQ
	7KQw3eUGdFc9VdaHBNrm6vbdo8WYe4pK8REE/mHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c715d845-b603e986-4ace-4f8c-86d9-ce525c4d8447-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2933aa623a407089cac025aea1cb31bf74afb57b3963fd2cd9b6ac3713b38ccc
Date: Sun, 15 May 2022 09:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652607539
