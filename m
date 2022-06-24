Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A9023B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656059212;
	h=To:Subject:From:Message-Id:Date;
	bh=xS+EO2D6C293jAQET5Jq4DRUCCYANZ0cUHMiLs2CerM=;
	b=ezY0g5Uens/SIQrzJoliC3UO6MVT1xVW5odQWKN802KcAYVrfBYxAVBbZZhP6een
	EWKvDSHhKmTf7/jTeWVq3YhPPTnBTKDMeDSdkJ0926YQwnv4oFeUtjhhkseqpNpD6hg
	v+7T3CYlCKsvvnymFFvRCHGwAhDlITE8ADrFe/YE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656059212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xS+EO2D6C293jAQET5Jq4DRUCCYANZ0cUHMiLs2CerM=;
	b=g2QKYteDhugzgy83M6NPLlWeAfgkX4sCCxmJ+HqIm341TXrReSTHY6830K4+OHkh
	J5PAzV2i6nOeDp2m+vt7h6rLJHxcPas67L2exHSEKW9KPJf2BR9PkIz7ORZjgsieVr6
	NukGzpd5/Ij2INTIuhCuMp0Rf1jEpdcT9GpDxt78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194d231f0-b9ae5df6-d7b7-4f62-b30c-9798c1e9e93f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9d78175a11adef228be8cf2e85e4de95d8a23f4c47f4360d3674d228eb1084c
Date: Fri, 24 Jun 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656059212
