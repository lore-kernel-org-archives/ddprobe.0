Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2962E33CE
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 21:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653169499;
	h=To:Subject:From:Message-Id:Date;
	bh=kdIh6s1JuVg1kHcBDp65m3v6H87wLryd7zXdac09qfw=;
	b=MH5HECyJya2X/8fdHjx6l4TXTTi6EU9U+pA1/SNv+1CmXjkrZx5NDr+DRTIk6Di5
	dgl8/imzm8AynR8JyJS7+PiwHvBG85TkhxCwS4ewL9V3NyCI/JPLgAz2YT1Ky/3S/ou
	5bq+LdkHgmxdJNhzO4K4l7dJv+E20DwTCsK80K0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653169499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kdIh6s1JuVg1kHcBDp65m3v6H87wLryd7zXdac09qfw=;
	b=gPpKgXkjbz+j0aDXVGHeqDm2VTf6jg9jMQsd7KVq/tXOieGmnqsua14VpsqcrSL9
	yE+VzQqFEu+9XcSMRTU0g/1Kt8NBU0vTOq/fAyry3XPVPi5vQ2kbXzHgnUTcVb7arc5
	otfw8fvSi/PqQQ+A/rGGZwrim/RCVh2/R23D3/lM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e894acee-2d38f8f4-4f65-41c8-9b69-0dec01f95e1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d937fa1c5a366473a951ba19c9870b440a318a4e956857a49812d7da06ba7621
Date: Sat, 21 May 2022 21:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653169499
