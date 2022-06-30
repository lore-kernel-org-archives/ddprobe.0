Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3280DA35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656575212;
	h=To:Subject:From:Message-Id:Date;
	bh=59x/lmmirtV1+MwrrxPoYMqna4RbCu0d+qST2jODzzk=;
	b=FfNEILV51zAFa8L75x1AeDnPiOurz1mNZK3lIr6S9AktJ8YIG97ffZJBNUDlAD5J
	e4UEIyHQhY84T6pH+S8TekhsPyfJyOUtxAbN85Rc5/dVHViuMzD4uoMqQ/Vlj661aSg
	C/XjLMeXdWDGaMD4PTccHrkq6cHT2u4sZGv1bZso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656575212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=59x/lmmirtV1+MwrrxPoYMqna4RbCu0d+qST2jODzzk=;
	b=BBTsw9lbPLESEbxy/FO+99kpagqZau3DTtoPkjcU0KTTwGuKaEXZyGao/adM+RBq
	6THuHSvYhYhd3dLRMpS8BRedKZJPnNQx59WQDlG8i6W2wrGlFSbFDCJJhDYd/1EVB3Y
	dq48WxbfeFGD6O4xQ7m1frgyFKG7vwHfZFG/xzDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b393bb4e-33062329-b538-4fca-9290-ddf0f222ece6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd2a67da1aaf537073054d7cdafb5db10b18de5803abdb51117384fd9a60cca3
Date: Thu, 30 Jun 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656575212
