Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673F37F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659409252;
	h=To:Subject:From:Message-Id:Date;
	bh=wm9Zu2RhoXX4ndjslicp3vqmNjZMfSLg+0Cb3yMVM4I=;
	b=CnNo6bSbaaJxkcZjUO6mPYmnalgnVcCNELf8u4JVDcZz5o2161PqQyCUVAbUGXAR
	QZHVsWY5UAeKqhJEh3TFP4kKehlcb2jSrTvtnGZp7gsiJazprkVxATSiyN/DJEhAtcn
	FvWgV3tgyU1dPtzyW9dM+vhZXhfOV/GokLGsbTWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659409252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wm9Zu2RhoXX4ndjslicp3vqmNjZMfSLg+0Cb3yMVM4I=;
	b=VBNv0Fg7jT+G/9wXKDWDgnX4I78VRau6Bn8+nboPna5RlJABSdIc2UCLnPIrWw5o
	h9Z8+YVufQLGV72ud12IATuZCl1clWMJT/Ul8znCN5lkV2JkHRjORjaZxsuChReGGCs
	krvmLVZ2uBGLts+ZKNuOC1P9uq9l89vSHlMBLaeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c7fc0c4-d57c4f4f-2568-4eb9-b064-06690685198c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b2f70d3296a15ef9e2fd851db7ff462591045888c870c7196c63e2188e6e776
Date: Tue, 2 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659409252
