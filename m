Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548FC4400
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659087652;
	h=To:Subject:From:Message-Id:Date;
	bh=oxtLbq4JRVQnwMgNafOqLLePTG+x/e65WdK+BZuwwZk=;
	b=bq2BM3agwslPjdff61IigAO2+/R1eSya8BhAASAo5n8X0Us5A+AmPGqrMwhxyjgM
	JNBe2xCvcZsrmucv9tH5BOAVMqowDimEtP7uabbCSwQVejixSA3UdpaAo+W6z83Tpos
	PjkSttWp8Yr6rkApX3BvntDs9c3ojMmujEHV6Y/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659087652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxtLbq4JRVQnwMgNafOqLLePTG+x/e65WdK+BZuwwZk=;
	b=cQKD48pj8xXRWJzghk1SFsbWOf0GZENwV09gh+8WaBIrw2nDmPwc/DiioavMSNeP
	nsPVxSpZO6PnP9o5K8ZWd1QgunyLpVJkPEdwdgP9wOczNuKCSrrEicK3uQ2rDxJAe0Q
	YfcpAJwhnCV0q6L3mu/cM7y/urcYgRPUqoLrh37Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249548705-b3572559-7e3e-4d70-804a-e260c5c80102-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53883e5309dd3cd7293232ebcc3e952b278ea915dfee72d4cf023fd574175d09
Date: Fri, 29 Jul 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659087652
