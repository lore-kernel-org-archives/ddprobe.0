Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C1F7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646989285;
	h=To:Subject:From:Message-Id:Date;
	bh=clJ0GTcPpsfO3GxeVLmu7TUNHbMUO0qtq/lyZAWzMgc=;
	b=Ijf1u1LA8nUVicHK+7F0OkUoczeWr/eunQZLDC6SCkDXp0+jo0yqsS2JqbDNEJY+
	+UL2p/0MWYvf/sH2JOcu+cxc3/oyUxVO/08fwW21saLvn0Vgiu/z2HRphWs+qsojPB9
	oylNIhs7NwXMbYSgi450dB4c5gFdFiG1dWevH0oU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646989285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=clJ0GTcPpsfO3GxeVLmu7TUNHbMUO0qtq/lyZAWzMgc=;
	b=lt8KofavIyaOYA4ROdMtWFokrEq8N0a8WKqcub08Ji5LDK69CT5VlheDqng6N/Pe
	nIOKiPVIeMZBveIIV+jSajI8UgVq+I32T/LvL6UCdzmahx3x3qavpxXJEsC+RBBwMrE
	60gXMxFdLycHPl9w6+VsE2MUtH22xOOtlnXaKt+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f783615c0-25de6015-1a90-4cb0-80a4-e3a147073945-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4b34268a982c443f63cfb4697d5443ab552d535763db0c039b8c3c27bd01b02
Date: Fri, 11 Mar 2022 09:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646989284
