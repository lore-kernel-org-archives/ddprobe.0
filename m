Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071967F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 00:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652746739;
	h=To:Subject:From:Message-Id:Date;
	bh=sV6vyNbYAsJEeFJGTVaKio95oh/Cjn+0fJhuv86Ijxg=;
	b=KXekxBFXDf+JRYsLVggjB4JIY2jXXLc2nDfZws0jzZcJVGDOl40DF+KigLQNv4oM
	bL8nLFK0PbldFsYRGMcNIN6DH36Ef7p6ZlwVjfV9bSIWwtDDLccL9O5KN5k1NUnbfNx
	hz4FiTbFzmlntcRjB85q7ibWFzKHaIkkUI4/XPuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652746739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sV6vyNbYAsJEeFJGTVaKio95oh/Cjn+0fJhuv86Ijxg=;
	b=Qk/Mih6Zo9MGGCC6R+dfXlgVRcGD2OBuPJTE0rzAfoboAeQA9K0dq3Tigu0BUB5O
	wDiAQ/2m3OnZ/yey+1Gw/d4wqRbQFDiMF0huriMF9xV5Kk9kVijoTZqaFMJq5z2p2/M
	yoP18vnHnyJOpoQSOfNY1AXLJIw+AZ0iBQoS1nb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf61de58-c84c21d7-1a66-455f-bb3c-bd2f6556cdec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 575fe18bb900c0f49ed23104571393f828d73b48dda0f6af4577d55c9e12ea5c
Date: Tue, 17 May 2022 00:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652746739
