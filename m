Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB02E7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658626012;
	h=To:Subject:From:Message-Id:Date;
	bh=TdxI7y7mLg5GxMhLnPqWgZCausD95Yvj9erZzym7GD8=;
	b=AqC8S72RG29OSWAV+BmqjKq1/4E5jFL98s7wWiZbTWJA69Yq8ADBPgCl2M7BDt2u
	md3l4icRcRykRT6U8mPu9EWjzVU9V/rslYRPxMvIFJh2w6h1CH2tzaOA+4dBzy1Ay9k
	nJ1cdkO6KZEVcLhitHvpvdkamHdIKXbzYbut4IT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658626012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TdxI7y7mLg5GxMhLnPqWgZCausD95Yvj9erZzym7GD8=;
	b=QVpxsR5yMTRgo4Lvh+ivGGytsL6S3CAGQWP9l5RsgldkPxtYGYnTeSz5IeJ/+Uml
	T3l39zWo3po3UtV39QSZUED8cVNjNmuWvxLtDh3eVpCkArY/hbo7K2EHxpC9/qNzOT3
	Dolr9ke5z2wFIxYHhBJjIXZjo+W/E/8jLB8CUIMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822dd07456-054153d7-7173-4875-b37b-ce9bedd3a2ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2538bf76b0d0c7a42ada39b9ec4e43d4f71945bad3c8ec6a3192197fbc949b81
Date: Sun, 24 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658626012
