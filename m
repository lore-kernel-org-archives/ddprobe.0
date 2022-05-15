Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B9B806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 11:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652613299;
	h=To:Subject:From:Message-Id:Date;
	bh=9GpGs7ERJKTXVn7ScsozmGpAExeUsHTN6Ur1/Cd+EKU=;
	b=U5Tv2LhCU+hSFz6zZAGSZfT/XRcyceRlpSmT4yuDmC42VmeIZ7wmGnR5XQLkGB0W
	kXinPeG+lO71/rOpPIKXpHYB2kSmue2apl4qFIOO0gMumPWCVFqUwQj9/KQSIjM+1/f
	qjlgkEEvRoBdaTeyK6hXRODjDjnIM9rVNHHgLKBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652613299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9GpGs7ERJKTXVn7ScsozmGpAExeUsHTN6Ur1/Cd+EKU=;
	b=H9FG4fKP9OkMe36HZT6YNDYIpqfwYTcuw+mXyfNSb/tpo01RZVB+h7up2tzcelzv
	mnheXfJ2ZXRrKkOPOh5kr7ki8oU6ef+EvLcA49Kt3j9poSsLSx3LuPvdqDa3HG9iiWr
	xJOIvou16H2LALHjgDtIT2x/kq/CHWZMKzte5Nbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c76dbc41-0a39bb28-54f8-4cc7-a215-c7fa835cf2a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46ed3c9e5d7fe6185fd4d4b0cb0be0618a5200276afe9192149dd59c953779ee
Date: Sun, 15 May 2022 11:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652613299
