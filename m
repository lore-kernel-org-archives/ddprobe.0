Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856CF3201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 14:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655475299;
	h=To:Subject:From:Message-Id:Date;
	bh=QkwptUC/+3BXTagI+FZhq2Jsl8JXdwqTZP2dCxSGwxc=;
	b=XjUKFKDRvW9Cp5LT05kIlBDpahHbP2SEqP3TJ8sv1LB+2d4le8LQ9PxRmbKQWfJG
	qu1BsnVCErIi1UicR9glrKhgk3VFK5tnp82nft3WqJcJvvTTbYh32sX/yfLzmP/2yCW
	rYuyq58BKCmoKizUZkVnSt34xK6NqKZTcgqK4lyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655475299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QkwptUC/+3BXTagI+FZhq2Jsl8JXdwqTZP2dCxSGwxc=;
	b=Mv6TUUSuKYkDzfG25+lIW8lm5u0pH3NYyKFmOrH6l23rGJlLBYRWN9l4O9hGbMaE
	4lMJsWjjtvbVZ9SiTcgBoakT3aSIhdkcmyXQp0SD/8KfgNKnLs+URFsptcYlo1QSLbX
	NipKPqAMC41TM27XxjIhT1CdhH8YtBP/f2axT6HY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181720463dd-d003f24f-440c-4423-932e-7daf05b42bb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f1f6b7b8202ce10a18bbd89dfced3d835554bef59d92d0523193db8de351eb8
Date: Fri, 17 Jun 2022 14:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655475299
