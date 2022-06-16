Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1E47A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 08:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655368199;
	h=To:Subject:From:Message-Id:Date;
	bh=4PGs7QDr2xeopKiFAwf1ErRwWArNvflSx8sSBmlXy5g=;
	b=XwV3zpM2cieaCJLkLsa93Yairr8Fb5RtJzCJPUerM/Fv7qR/HxvZ5JQKU61K/fAF
	FMkIUdsI2k+Kg8+InErOWoQZ4IsdM+7IelN6xLfYJg6aVJLO9y+uz89DZKCxJKadQkp
	RRBRnHaddgLqRqjjuSehBLG7heJqzXjZcnhNKZrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655368199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4PGs7QDr2xeopKiFAwf1ErRwWArNvflSx8sSBmlXy5g=;
	b=inXzx3bzh2/4zAW92LJJMLDqgmoFfuHHwFPvAX0oc/709N6vRoxskW9nWL4ZDrVM
	Lv4/EyYs0Pl+H5lODwNjAKpdHD1LKOylMD9fkUDJDE7Q/VcvUxOW3jaCCh0voQaCEbH
	VPBPoyVxncEDZ5Uynqla/mUx0t3ejhz7XtYTjkZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816ba22c51-573765c8-ef68-44cd-a7db-d355cc1af995-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 066dec4834cea336856b0b7863ca0370716b4891cf0ed7e5e38a700300991df8
Date: Thu, 16 Jun 2022 08:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655368199
