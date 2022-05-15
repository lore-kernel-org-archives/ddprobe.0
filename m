Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A427A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652618819;
	h=To:Subject:From:Message-Id:Date;
	bh=YqJJBoR8FkZQtXVC7QTpuNOqFyKDFfSkHfBUq3i8XN8=;
	b=KSs580uLNtL5hwEew+bzG7OzJbRy/pN7f5LNdncUMuN7Qm97vAYzBrTm+W/S1h+f
	4pZeDZZcyugeGdIaZTNY7vlG9g97gvgIHnByKkLyYfnkVJe6Hc23XrXcWVfJ+S+GQ5a
	flLxy6H3pJEY74y/uhQjKzV7BEhMPBYO8R0v+7VY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652618819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YqJJBoR8FkZQtXVC7QTpuNOqFyKDFfSkHfBUq3i8XN8=;
	b=ha9C8GczUlLw/JZYQpFwEmAX/jKaoa0f/9Ps+Fts4KaHAUBOzkFW3p8jZ3u3Iq5X
	Q+HRlwTLOyuO/bjAQqWylentpLpu9sZjY253nhoRu/Zu4eMtnne3Zrt3PbjoeeLdFZ/
	XvsUklSV97iW+06gM3g49rTSiM7YY/po3NqPckto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7c1f6dc-e1ee6064-ff61-4757-aa9b-271623295d83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e574a93b25b56919a28c8ab4aedb4cdcda823e82f3f705c6742ed4d14c2f9913
Date: Sun, 15 May 2022 12:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652618819
