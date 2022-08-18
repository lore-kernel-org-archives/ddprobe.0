Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5950C23CD
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660809052;
	h=To:Subject:From:Message-Id:Date;
	bh=HbAcxlkk6XPzUvBfG0D8zo+XAUaB1kKXvyWyQWH8z0s=;
	b=AfEF2Hsv/n9fpvr6EOSvMAjylxoZK/8NVVs6yFN09OO8kHOHH29IOyc062c9D1JQ
	l9zeMJY+n09IbFOrGH+oHd6fnU9kDDd0V2hIEl1t72+ekPJUvwX7giPxHrUYIzvvbU2
	a+xaez4iVl+DLsrbRPzkRGJ5MVXeQoB+C2g1pd4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660809052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HbAcxlkk6XPzUvBfG0D8zo+XAUaB1kKXvyWyQWH8z0s=;
	b=i0pNHCtNsDNl4fESGjgr3aYBvzaKRUYScDXXtBkOUfbBMwe06UtcIeG9XiqyMgix
	EcN0MQVRj7KdiPAiSUWYaH/gsn59xnor0Ndlvzh0dHBr0PSfB4UIX+OmQkbmCSETtJB
	o7+hBAZUpoWxyPBE0Q6vxFFRO/i050mMzFscpFoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182afef01a7-96249cd8-fca6-4414-b209-306d8184d3bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a48d6f0ceb33b9025d4328f62659a41beb5a9f5808a51c7991519dd2c08a691a
Date: Thu, 18 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660809052
