Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479F533DC
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656869812;
	h=To:Subject:From:Message-Id:Date;
	bh=ma1Rc+HFzQd3k6V3/AqBlD9fby1hGiQLTb07wALU3sM=;
	b=OAZS1LtYmJe5mYhjAVdQjKq05Sj9tlyorGUUHUGvo8BPvObtKIhA3qx/y+2n96RN
	9aVsDiwOG6Mjmz5XtuO7UnZR49UpInDm/cLGCQ4zwOAEEpwR2ju/XEIChUU1vE4rUXf
	tf9YSbIGwF8gM0/KtdaWviCqvTgtfjCV8rMLaVw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656869812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ma1Rc+HFzQd3k6V3/AqBlD9fby1hGiQLTb07wALU3sM=;
	b=Wyuf9ixhtZTDGKBcqiTApsQoENO3/0iFWJRkeBEYduQCxGecL4rpdmdnMoT6KpKx
	g9kFQXFQ/Ezsj0oTMTDU+r089bOcD7LWEa5joorPrqHv25MtoHKbaUYHQYscHQ00jLH
	OP5sD3ySqaL+ovCa1hfjAB30s/+veLgoTzaoQY84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c522f84b-93340c13-f219-40f1-945f-2168ef77541d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51b3c4ae24d21136afd8f901353ebcc36c833b76dfec06f869a874fa1479418f
Date: Sun, 3 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656869812
