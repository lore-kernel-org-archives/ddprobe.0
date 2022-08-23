Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB0AA4E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661238652;
	h=To:Subject:From:Message-Id:Date;
	bh=EryY6tQfaakOIGxqXocIgQAjwii30rqT04VDWjaoLO4=;
	b=WLhmyxZfwIs26syHEhxWd3h7T+Pas1w9awdZAMuBrjcrnxxV+n/J4hJTCY2mrCEl
	10HYX1xKLzyFDxxlcczL2gHJxDhVQw9u8zcb7ktLM3Xjwa//C3MRKQ1O3t1DBFI+oAx
	B1BJEV5wNyIfLVKWbaJJOW2/RIQEHulKXvxASmKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661238652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EryY6tQfaakOIGxqXocIgQAjwii30rqT04VDWjaoLO4=;
	b=MNrV1gUiTauu71/KMujctGqXbytkGMeb1m3pApvKAQzzeCz7nvURvvzmzmZfMpQD
	PPqIHLU4BF+OZA7PUAt2pwo27VibccEyijZ+KBmMy2eOAZD5Mfihofwr1eA+4hZEN69
	/r3OEJ0jMl42XDUGwdCil2vrqrIxx2cE2aaswu14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c98a2ec9-4c858c97-0d95-4cc3-887b-a0b6968a591b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 624a210c2c5de5750e4bd5e18c3e78c5a45179c03322786d55a1926a914efa3e
Date: Tue, 23 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661238652
