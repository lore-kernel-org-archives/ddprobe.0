Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018E328F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658654212;
	h=To:Subject:From:Message-Id:Date;
	bh=Ln8GivsjTRrc94YbhI0mpMfNOG2RkSzOU985nuph2rA=;
	b=icRzFjP5exUviIXM2QIMVV/Azz8jKFGem8ydaFd5i1GEoIUZZk8S2wdziz8/z60V
	UPzoGfr9WwdrYFhZ9XgcmXdvUuR0XMo8swsYelHPVMAGRZsQdXVfApJXiH2smv4fYKH
	6NGb8PfgJoKoQcnk5ikWop0V+l8SfV8rMcZvperI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658654212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ln8GivsjTRrc94YbhI0mpMfNOG2RkSzOU985nuph2rA=;
	b=Ld6hjuvR3HvIguYq+tdv7FGCdZIWcd3+H4hP/mUssa7OJ51yFWdvWD9QfhZJu+dq
	WIbxEC6U7S3t/xEE565I6H0aSbhIbX4THddgzanpbtGzelLWQbPSwU9EFrnUFq6yQXy
	uYFdSERfGdQiyfN12EyALhum7wVAWBGlrOoXWyRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f7ec0d8-f74200d2-d766-45cc-b222-71f8fa7b6163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e5c1874575d212b63cacf134918727836e493557d397c608124071a86603072
Date: Sun, 24 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658654212
