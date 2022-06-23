Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A67C10F2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 00:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655942879;
	h=To:Subject:From:Message-Id:Date;
	bh=GRtD2gAQgtR7RIYUbp2tohhqmn1MhyNIOprDkkEiTGQ=;
	b=CbZ9FMOTfvzDsk780R2xCPyH6XOFC/xUX7K6v4DZdlLDjx+h/Lrcsa9WCrnkpi88
	nXpQODgxXioT7Rz8tkw/unHc1QKie/Rgu97qkVJIDGVJzRIbOz1cv8aSdueRpxqZcVc
	9Y+MQ96VBwF25qxrrCHOQB+VbH4ZRykhlyAHSHjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655942879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GRtD2gAQgtR7RIYUbp2tohhqmn1MhyNIOprDkkEiTGQ=;
	b=hjEbW4XLtsWMsy6Taz2xQFvg/RXaUOJci0MT9Oz5q41tlg7nZC5i+RXBxA3OsBPb
	eEFvaY3rWqXsXrNfenqmBLzGB4f1v8zg8fErExIfIsQjQCSpg5xI6rCXhUX2jZ28FDO
	p7lbRuDuGi95CYeq//mPhGwAmPT7ku1vCsC0kPRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818de31849-77b827a0-3517-497d-9791-777603670a70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6574f14c79a9762f5e018f37f3123610a1caf0ee94706cd2f2f3d5d14294f30f
Date: Thu, 23 Jun 2022 00:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655942879
