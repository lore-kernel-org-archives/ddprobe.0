Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653397B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645425384;
	h=To:Subject:From:Message-Id:Date;
	bh=sq3VvZ7PXf6vkkzfwT8fOJx1CArPpJtgIPiVxyyax8s=;
	b=VaM6CF++D+3uw43xgaWu1nRwJdX/lgeAKu9Haxt6IFPUCFnlDpVTRkpHeMv7nAiP
	8Dk15ktHE8X9Y4RTwu0r4R/MN9HJyhb1gfTCWmlJMo6qKu1zflCnWs32mDD8eDZ0ui8
	q+cCwwy8r9FCqz2A0IlBHfCtrh11Fde9X4Xfz/W8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645425384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sq3VvZ7PXf6vkkzfwT8fOJx1CArPpJtgIPiVxyyax8s=;
	b=kc0OTuhRjnzufyMlzYW1LqN78WsbLmAt8fSJ3tFimO6L7v1FLawyox2Fku7F9t/4
	FXWXskiLa8M2GO+12ROZb6jcX7zmF+IGQJcACZkAi57KtECcSgkQ8HFAU129kyd0zoc
	VjmNdJKCGVPIxnw94gR1zbfE4OWMin5uTs+US4EU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1afedd0a-ec20bb9d-9789-4148-a51d-545678f11ede-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c18bce70fb114f32065a3ae6e9b71b2204ab90d394a7d8d02fcd474206589aa
Date: Mon, 21 Feb 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645425384
