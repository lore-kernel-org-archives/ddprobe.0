Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5967F18E
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656989212;
	h=To:Subject:From:Message-Id:Date;
	bh=a+f9eGC7YpOb5auPAWAhywbs4yGC4BVSb/TNUkhiqg0=;
	b=B88pa/SAz16GmS3lMIljvivBm3mJis5e8xTWy5h/wuOl2JhQC1p22lRdIp0T6VSj
	lOtkkb3ZwQcMFScGGQ2oc5pziRLwzTGNuhNMXoGUNwRCwIwckcdtkveQMj/rkUjg4xK
	Kb7Mr7Mn8T9PYYzgPzej82i60QXAN5RARILPBO44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656989212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+f9eGC7YpOb5auPAWAhywbs4yGC4BVSb/TNUkhiqg0=;
	b=O/zB9GeVL1/ugdLFmDBsi9SLunOecdwpRV+VjEgOAQE5xFv4mDf0te36rbxztOFF
	QrbJMd0ijpH2IHIWSrp7zHLBie1GLpP2ShvnwSvWeSRIBqf7x/GHuQulGwSYZhTnm5m
	2jWLv3gh6My3Qsbi7AtZYoE7tza2qw7WzryaVHQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc40df99-e7bbb2e3-fd9c-4cd6-91ad-5a039eee25d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8302c987980b7570bf9e3af8f0fa86c5906f0c42c8271fbc7b89575661729387
Date: Tue, 5 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656989212
