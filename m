Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F71F1FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 01:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652923919;
	h=To:Subject:From:Message-Id:Date;
	bh=a818ZzXJF6n+det4WYmgMqqzOTwgnvh5bh7Y7eL0+Qw=;
	b=RguZIf60wDeewjcy9owGmZnc8nKZr7D+dcbk11hLqszAj1/T8RnRJ2NykmW6ZITG
	VouRgMHNbSvHtEHffW2q0PaZsjahW1I6WYIvmKi6srQDuoYv7aHnQyj/UZBT5haXxoK
	ppEQrnfNHOSMQdichJISV5DUcyAh2qdb16/C+kTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652923919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a818ZzXJF6n+det4WYmgMqqzOTwgnvh5bh7Y7eL0+Qw=;
	b=G/jKchnH5WDbCBPhjAdRpz4Otiy3in78vSbHHeFBHgDILuq8LWIMxMrrV9eHn/JV
	AselXaE4v+yg7ymBF/czMm4ZrE5uChngP4Atl/wlScm0Y8L0++IXoHZn8MgB5vWwCAM
	zSTOFaLT35PEIKNnly3GdKbTgKxsv9loRuzlkTw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9f16bdb-aa483520-dbc1-42bd-a8e2-73ffddf812c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a64028a6944e7e0a99f65ff2526f0fba7926541e3c358169e1b7c2d4f4052e7
Date: Thu, 19 May 2022 01:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652923919
