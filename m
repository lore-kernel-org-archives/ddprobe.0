Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ADC210C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 10:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653213839;
	h=To:Subject:From:Message-Id:Date;
	bh=zuJzs2eSzUq2RFNg2+yjcDokGciROF8/R3/E1KwuEhc=;
	b=QYGrHJ4F7k3OruCayPuVU6KpfDVCdT7s3aHhCBm0c5PgYTquNrsl7bn9dlYG3dVn
	VF3HqTOT962z3l+qHii0CMewaktN9Plpjz4CMkhwEzhlJjLuOKP7sdFvD5uucdgRZCK
	s6S/2H90YTrSX1eQ3VSn9CACeRPzRVFkHxMdvh/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653213839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zuJzs2eSzUq2RFNg2+yjcDokGciROF8/R3/E1KwuEhc=;
	b=XNaTCN99JgPVnK+G+D1VzCS/9gqsHaKBCvFHXgaKTRzpjnnsRP4IrP9gfr0iUOUE
	79epSCtXcU9sGaVE0hWUyBFsx5J2JJw2hGV42zBWOab15HiaNRvXsr0rMa154GRwg7f
	H6Z2w52ydWGgfWlJws+mtlMpEPbMctQiZNchRL0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb393f6e-0f85a38d-4d61-4746-a373-ec68086e007d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a16168574188cb5287f213a992ade455210bf498885147e4c96a1a5ca8b95bf
Date: Sun, 22 May 2022 10:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653213839
