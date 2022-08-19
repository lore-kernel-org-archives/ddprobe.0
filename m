Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEDB6101
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660947652;
	h=To:Subject:From:Message-Id:Date;
	bh=FXVYt81lD/Akqxu/avJJL/+ypQlsmgku5sivpJrQYbw=;
	b=lAT1fER/xY848eMwSQrJNJgenf0czTZj+HNr8Cjm25GZcInMRMBYvm2mkesi6TCg
	TwjnPeym7DvsN9CmxX1/xEuLUxcmLsVseiJ1eWFnRzvkz0c+Ms0v7zDkg10zltgPLsh
	J5q4oOdab2L7+WWhO3t8IsMZPOttKi0s6UHAr6P4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660947652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FXVYt81lD/Akqxu/avJJL/+ypQlsmgku5sivpJrQYbw=;
	b=CDXDNteGkKD9/PUE9nuLRPaEzcik4I4h5rxAVspjykEw2sL0WI3HZGmAvxs74GLd
	tQamMRkjZFAfJxTopRH/SteZ/rHMKzk4kwrvsvTEDk9sSA7BkSFMbz9F3RW4s0Cy7jZ
	QqJojVkiMowRsTHnWBOOw852EJzYio566Qac71nc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b831dff4-51832d36-5451-4da6-8579-929083f78350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43d7ccf8ed11c819cb0a0fa4589487db9f572c8074a803cdaff2e62b8a03f688
Date: Fri, 19 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660947652
