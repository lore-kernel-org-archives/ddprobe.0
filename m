Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAA37A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659046252;
	h=To:Subject:From:Message-Id:Date;
	bh=W3xAl4052CmgDh8CabEbQhXdtm8s54Sh+FhF8l3hXdc=;
	b=NBfBWCf5Zt2TxoderIhlQug1AP0j13lzC3P52pmsZdDvJr8RCXO5cfh8ZN1BZ1Go
	iKD5dWp6cdb70Gq9Z8A/Jql0zRQoQhZE89YMQuS9lKie1DOQy7UuZJGZtUfJm+IXi5P
	rnyy7CmPE0wf0aB0Afnfv80W8M65KpynbG+l2Ypk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659046252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W3xAl4052CmgDh8CabEbQhXdtm8s54Sh+FhF8l3hXdc=;
	b=iQHjEt2xTwOsNksEFdwZpCf5y6tbnbmLRim14dgzCzesmx6PJWvdOqraNDkeWqyz
	LqXgEVXEnq1KD1FcdQj9r4Mgikh/+GLhGb4RfW2ElL/vwZJ44pkosekbDTup5d2GYO1
	ZqFGMaJimhkuEh1uNbY2Bf5bAh8YADmftO8eAmFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246dcd011-25828c96-81d1-4056-91bf-f408418399e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2250365d50b86b136e2f974acbc1d5efa46d55662fb85546525ad0df324e3ca
Date: Thu, 28 Jul 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659046252
