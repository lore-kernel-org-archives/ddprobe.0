Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16525628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 01:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654133219;
	h=To:Subject:From:Message-Id:Date;
	bh=9Y7d8qc4HfxGmSAEdFxAP2S90oBOiUmBtnvdgsU0eAI=;
	b=E66iPd3pY3goTXXlgT77TX/s09Tq+NXEffshXFWWTrkpLXId0F9mWw+gmOaWnwc6
	eyL07Dk5uJJ/pKlmnfq0J3auOTdWxKbh6ZuFn3sr0HtrtWrki2+5MB2E+zERsThcVvx
	JoQ7LGf3nLgdSnQCky5wlrGLF7AMg5izvLo8kGNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654133219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Y7d8qc4HfxGmSAEdFxAP2S90oBOiUmBtnvdgsU0eAI=;
	b=KBJ4+Li8qyvSvoc6C+9v/0hhqYYxPyqYYuhl6TCZPDmoGxvG38Ev853qpgNfgEW5
	HVGE8thYmqPHcL4ghRUXBJ4Y8EaHEroACIEeRWPTunknDQKfOYN9yw6Nb6wWJecYmBm
	VYGzl9gLMmwKgnMSIb7efvAz4374BfsEmy0EpgNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812205dfd6-9fd1ce77-8d38-4352-b30a-69bf99c99126-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88914edecf11a3b4f37d9385123338095ad4c0dcb08b568426d6c97258fabbcb
Date: Thu, 2 Jun 2022 01:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654133219
