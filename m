Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CC1368
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 18:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653502019;
	h=To:Subject:From:Message-Id:Date;
	bh=hxd3r1l8Zz1onuzZuJdkPRomN+xl/z2ApwTWM5pOjWM=;
	b=S2sIKeMQq9cdJkgfjYlSCQyNEE/8or2buE7nWG/zVknAB9UmqD6gOBfEj/3qPPx1
	YlQANpcZCSktJIvscoXpqdQPBsRpGR9o2bnb1pCRbc6ro+0YK7zHiBDO9jL/QkM5hVO
	h8JF67dLfu3CBCpB3oxbHa3Q66/4oubje1HbVkus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653502019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hxd3r1l8Zz1onuzZuJdkPRomN+xl/z2ApwTWM5pOjWM=;
	b=IC4EpPSv5b2tkD8rw8QtqAAwmGuyM4Z86ElbqZv1223ggpNwew0M/8e3YVnbAJpH
	RvbgD9ho12p+bfasUF0g6mJ9VwboucxiLeHCQPQr6BNqMFx9unJ3jQA6pbSzsxbC6D9
	GkI7liaC3prs2mrs5qnwO3/ObMkYp9gXHQ1yERr0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc6686d8-8f8ed314-71cf-45bd-b966-48b2be0237c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24d15cef663a25c5aa50823cc5d440818dfd43b769ce92dfa4a3ac3ddb30dd74
Date: Wed, 25 May 2022 18:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653502019
