Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01ED21383
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 06:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655966279;
	h=To:Subject:From:Message-Id:Date;
	bh=6fq1qhDSOj/PTqkpBMdBZHcwUXQG7DkJtKGgFKn/8kU=;
	b=daZaDNsJiHV2jeyHU1YYK461FKLv8vqzV6zJjcFDbCZeTClYeL+LIBRnlbYadFSx
	Q7V9hlpw6kvW++dMtgJVUmo+XpKUV6VBUK79wQeh5biYCpFoueCZoPzKvvqm5QTc0ac
	eZeyWYE2L2yiFERHLt4DNdk8rIEohUAUpl9r28IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655966279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6fq1qhDSOj/PTqkpBMdBZHcwUXQG7DkJtKGgFKn/8kU=;
	b=Gn2qGCC2le/4vBvCqJNowjRU/w72lKny7Lax03YIxNplwC930asV3ONP4Wl9vcLH
	sPNM5Sez1J0Rqqtx4X0c8YK+yHnNWa00JZOX1VsXKpzl2qcGyl+NYSQID0VvHY+7jUD
	45XWlkEMEbC29ZB7TCWnJsC1StRGxKH0x85FBKS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f482656-221c74e2-09f9-40ba-a236-98850ddc9fa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a756b092d1aa98513cd0bf2f5c4abee0c607607deb5dadb9833716c30aa0f05e
Date: Thu, 23 Jun 2022 06:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655966279
