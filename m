Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFAD7F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 09:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655025119;
	h=To:Subject:From:Message-Id:Date;
	bh=jjOzqPgt2KYrpRUIeHYdsU+LJCOxS1FctexYhDzwfNY=;
	b=kl9IPaxoDQzHAs8GqlFKuJ2uNUls7O3ph5HXoRLbRq3C4Yz5Frg8QD89g2jFqm5q
	yoUidk5e9IK9X+k+3trDesXJByJBCZnWsllzIXjFgNO1H5ECaDevNXHRQx/EOLUaHP7
	kRncBXnyZB/O1LM+S+uM1TqFJvouOrm7/cnNHYFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655025119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jjOzqPgt2KYrpRUIeHYdsU+LJCOxS1FctexYhDzwfNY=;
	b=Ox5adbEwmcAgno0eiRjlUnjgOL+yOEgqwo/wow9reb/E57RKIyRRw4cp0tehe07L
	R5vt1FUK0hRQH4prv00vJp+lmQkEACJYfRqmkbmdctpKwy8SIOH3BKpW+lqTEtYf+0s
	VF2iRFsXLsVV5J+EtkR/Y6ckgaWyJNhaMipnJHss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181572f3081-b54b257b-ba72-4811-a8db-8b70254ce3bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c0c43b8c24940960393efa1213783f648cd2df900613375fd730ee9bbe67c03
Date: Sun, 12 Jun 2022 09:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655025119
