Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5397F29B0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659187252;
	h=To:Subject:From:Message-Id:Date;
	bh=mt8/nKu7oPjByGZS4jeQSFIrr6oRKjLrUYQ77Vdw0+Q=;
	b=aO/HZDxbp9cJcy9H1/2iEtLYjfeia3CFR2tpHE3xgEIaHWRbmN5jkp2nTmZ1+RjV
	bvbik0Yn7RROoqILnOr4WjUOFkjb0bM1vLJF+YdB8j/qA4NrekR132GRKxLmm7rp4fu
	GswMR9t7LMH5Pr0jP+NB6VYyE80jbVhkPOY3rS7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659187252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mt8/nKu7oPjByGZS4jeQSFIrr6oRKjLrUYQ77Vdw0+Q=;
	b=UTg0UqHKr7GM3WTeunpXgXcCCGMRi1vK0whkV0solk8kieTwgZBHsE1RM3GGMGuL
	FYa86rqBvEsur3T9CkOOVzBs2CeUNb6iddVWTH8XR5POcXLnCjaxkof4xUfi2ZuDSC2
	dOzOo0j+lp7fWt4xoKD5lvZUvX0CKBR+ckUOtJ0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f444db1-d4617412-5f25-463b-88f0-e63ea94a1e6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b8ea0de0c2bdc575f42091d4e0a9818cfa950fab9a025384270da969583b63c
Date: Sat, 30 Jul 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659187252
