Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF243201
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 16:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653929039;
	h=To:Subject:From:Message-Id:Date;
	bh=0MM1IYuPt+SV2iYTLwxBrw+T66VVNTwXNXoBiYH3u+0=;
	b=PTqK1yDXkuI+eUMePBRmrp3PBLnyr3Jbz7f8kMV/B0s2CqidyqlCvhmgF/aZywoo
	4aSs3xd+QKKCibOHEbnoE6ew3X9FbrzfKNbYGyv8iJC8gPPLh97gW2uHjroa6vBPW1P
	OqmQUrDnHp3nU3DAMx0ONcWLPXwWfZvE8kOWkGTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653929039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0MM1IYuPt+SV2iYTLwxBrw+T66VVNTwXNXoBiYH3u+0=;
	b=ZBXmGPCyEXKd15kUxOIORapDpdOncIsqj8kvgJGLbH8gTqjT7GvL0mbSQw53zLJQ
	CX3/11DgzUx5nEiYqAr+ENht3PaGdIYQLa/sfu4LQR1+/dDB40OLVRy1WNkx75bAMnZ
	5btRIXDZWBmhy7gl86sLOizSwLmvjULchrK5TQos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115da55d8-f27b0240-9b67-45e2-8ed0-bee67a0b8d14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 604aab1f8213758313c987d57e9259dcd3cb11c4d5077055968dc444cc26ec94
Date: Mon, 30 May 2022 16:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653929039
