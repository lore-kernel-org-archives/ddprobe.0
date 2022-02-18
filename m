Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723503FFF
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645152084;
	h=To:Subject:From:Message-Id:Date;
	bh=EubWxE/3Hjah5GelGFPhlgY2VsP5q0BpEv9soLALlwQ=;
	b=YRMUwvpS8bLeE+WFJNNUiuWFZtSdNq6smfZ9QiqWgqLzaKncpBOvekRkyI61pUwx
	P1VkUUvRcxLwZd/J5e25fN2P+9gZ03xMeU50eZabttCjyptlHFsUrhb7mIDunVc61Rn
	CEIVmIctD6cQRIv1cLdcch7EuS3LBZH1MWeA2xyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645152084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EubWxE/3Hjah5GelGFPhlgY2VsP5q0BpEv9soLALlwQ=;
	b=GMozRed4+GM9mKCczB2cRQu48650u9aF3XSeMe7cuxDAFIfgoTWtCCDcJCXXWJht
	DjQ/douqCSRslrXmp7ZSCNundvp4ZOT4icdzroS7spv3gaTEs+tt8sSXLGgBhagbe2y
	0OZgrw0PQ0mCUwqGExM0xbTNwClOCjOFt6Njw5UM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ab4a32d-a22f068c-c44b-4543-b9cd-c128453da8dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 318ed59594756b1827409cf94748ba57293659d0eefa901e07a809725c5bc591
Date: Fri, 18 Feb 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645152084
