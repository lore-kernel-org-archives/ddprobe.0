Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2F4EC5
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652701379;
	h=To:Subject:From:Message-Id:Date;
	bh=fCooMVX2tMBk44W247CqEq7dIH+RCcLFNCFV1AIuXzk=;
	b=WCqIUa5z8TrVm28/87QFNq31RCYW0SZIxE9T3/eOvzZ9G2bOxtPt+St1GTvXLIht
	oamCD1rdcuf9reTyi66FFMGNEjiSwLaEsy3LKvjRRkbQeBeVRh6cF1txDskA+FTGo2D
	DfohHuQa5IosX/2HH9y0kiLVfw4KrlGcRo+ti/wk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652701379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fCooMVX2tMBk44W247CqEq7dIH+RCcLFNCFV1AIuXzk=;
	b=f6KJLpbLfN5Dlz1liUT4XOTDPSB1xhuidhNZORMVizHIezP6DncvG0Hoj9E7K9UL
	0t1n8elpOzX+ptaXEfPO+iJDnUSWNX9TC4qBJGOqGh3iBF/+zSmiExQSJoEw9VEGfZs
	S/bhkYnRdaZdcdDdjUm6QnOUAPlW2LzVV/RmWXvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ccadbaaa-3382f3f9-665f-4fe0-af9b-6cf551b2060b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a885241b0a9a5976afa9343b41b389482b27f106f34085f6ce56a8df91800ccc
Date: Mon, 16 May 2022 11:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652701379
