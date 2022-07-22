Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789184A2C
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658513212;
	h=To:Subject:From:Message-Id:Date;
	bh=wOy/52wfQg9qPynRB92HT+cX+lNwSE9zOMWDg5Udvv0=;
	b=aKr6cOd/uYfgY8Hw/ZzBClMK14Os4zDt/CBxIlkQcXjzxLDiSkN5Tq2/0xKPwXqd
	vUXamndVK8BiChE+1hO/z6EJbWp+OLVVuZTePWxE+x05AIt7SZ61vJYjZwmQv8eUABd
	N3j+oWYHBxgpScxj2j2net4yWi2sOa6NF5qJuiyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658513212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wOy/52wfQg9qPynRB92HT+cX+lNwSE9zOMWDg5Udvv0=;
	b=bn9u21ovgiQluMv86c386XHQmNpF5VNfCFX3IQD+C2y48gHCc06/6XXNvxU/yV00
	eYBzhKknnBFuoIF2vJD4XMtsQwasIe2D3peCpDhqtSXIjhcZ17k0xNeUACoHAVqWFaD
	PW23rXOM8MBWhl2/74byomcLgjlPsPXlXL2Zuu6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018227174394-28682861-8f2b-4893-b0e3-2eb8bba332b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30eddf08d0ee013d3db794b20f54c4b37c5db7709174be659821d56ffd6a4fab
Date: Fri, 22 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658513212
