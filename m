Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005941852
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 15:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651247398;
	h=To:Subject:From:Message-Id:Date;
	bh=YSlTTIacn/QFvJeT36KFoXgFQGHXZPSAD0otVupLZL4=;
	b=Q6tDVgeySTVnCJmeL+SAo8N+ny9ikJJ1LhhvkMXLBwYWSI0wlH+8YN3qoPTSZtx6
	XWHf4mb0Zm9HleBFwaAXOAwL5QPa1WcqmW3ugiQS8TYWADZ6Gz/AsTMbsUIEriHAtlp
	opSV1C/8NVuGfxvtG6eD/TatuklWNf4hRcqnzS/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651247398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YSlTTIacn/QFvJeT36KFoXgFQGHXZPSAD0otVupLZL4=;
	b=bCOpNVsPmoqRBN+/MwmAtbzA2Vspm2SP3PZbitX5asmqCVPb19iYlnIm+TQ5JFzC
	qF2gqLBvplxEts5NxIh1KhABiqPknG5j4hPcJViCCOr4EYOQWw8s+mp03d2mbYNHN3l
	AHGl83B+Q2y4w53VZmcrS90GEQeoM5ab/LBUDGvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807603bda3-e04e3aa0-bcb5-4521-a899-b610c52d13df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 989147295daede9f289f154c110da7855139e3ead1bd1280a3a74d090c5c9a82
Date: Fri, 29 Apr 2022 15:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651247398
