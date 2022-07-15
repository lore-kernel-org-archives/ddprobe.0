Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080652FAF
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657917412;
	h=To:Subject:From:Message-Id:Date;
	bh=uSFJCz8kcknygCJwpVkMBvPRpcp1hjKmqrOQB/TFwvE=;
	b=AK8acrV90tOIogWer8khldfMnNav2KlhdHd7UeKFl31wEAr7ZvAqSbaEOr7XsTn0
	dg+H9J9RpziMCyHwrDUhlziAr68Nle4+uXiTdKXw5eiW1GDOelytppmvS6Y3yULmshj
	h48IXD+VCNm+pnce/Z3QiND7vAW2V7BOwIA654ZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657917412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uSFJCz8kcknygCJwpVkMBvPRpcp1hjKmqrOQB/TFwvE=;
	b=dbBL8Uab6luGqWWlI5Tkb+XQDD8SzCyvN/T7bGpQ0i8/4tGQX62cRsw+HE3u7Ui8
	fvC3+s8hBQSg/CBjz+cuXAD/LBmbZvjJaRS1b6GtFa9FmEt9iydFWxQzZI7zDuiX9kv
	2/IJkYcd4A9EXualwAoirYqz7NLVvtFgYCFdxMqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182039413af-84e5d52a-d6ab-40e2-bd22-168d1be4e71e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc09765ba0b30f93529b0d7b80851ed331338d607b2433a4415703abfe86aa4d
Date: Fri, 15 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657917412
