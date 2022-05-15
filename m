Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B23EA5C
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 20:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652647019;
	h=To:Subject:From:Message-Id:Date;
	bh=fnP9io0MW/BJe7GLuPZvHlj0eHpN6D7IFQjp57ip5oQ=;
	b=S3QaA0YXiZeQFhPD+32kJXwwYU10PSdk6PkKi+vMiEmq3Gng2yhb31PGX+DiumFq
	yGrEePPcg/vSFRE9zRGhurS87JtCSJ/hOJ/WQj5sJbZW/oWXYIT689+rxibwDVkgIj7
	toGl6/6no5vr06Rh8tgfUBHm++NvtW/y8/sy/u9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652647019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fnP9io0MW/BJe7GLuPZvHlj0eHpN6D7IFQjp57ip5oQ=;
	b=AwlO7K0eDzwnhAX7kK9NU2aETS3weWAMXV7E0A88BHF2X2XITQ0xdC6M4zOYQxvc
	89dE+i1yLxpVhgmpJGSoEpMrauf1eayVGp3H++ksDAMfsTKCHwCK9XT2dOX3nCC+A7z
	vHOdBR9f1Pty/CNguwBuYQRKenwtEvjqEBK2G/B8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c970433b-9216102a-2419-4449-9fbc-4839656a29f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d1ba77e4eb9b6bd77ebdc476b7a50f21b4e3378d7817d5c6d52790627bf2460
Date: Sun, 15 May 2022 20:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652647019
