Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAEA321D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 05:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645162585;
	h=To:Subject:From:Message-Id:Date;
	bh=3srzW8vmTmx/ov9CUXjIJuNdwGk3qszXxJ6IqxHiCEs=;
	b=l3NkqaBY1eZ8sDCLHENViNRMs3SOB46XsyrS04Dk1dZ0FtzyP8g3TcZoVF0tGRa9
	DFBFS/NfLQnhvDymDLoNipfNXtN9FA9yiGhenMmbyI9Q38EzpCbQqWCJxi5BCj5o4JS
	8otaKO/PSvFYFvsYzJ56e9Xd2G3f+tr1zCHEFRTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645162585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3srzW8vmTmx/ov9CUXjIJuNdwGk3qszXxJ6IqxHiCEs=;
	b=EOQOK4V+BayUxMnoBznA/VwxdphPJ1neYQT+TyNEW/KnmssVFyv4AH7yf0RtxgE0
	ewCl0+t23Op8p1Sh3AvKBdPFRPVieItrXSiD1NVufDTZN1fC8G4plNrrYUhDVzQBtZW
	0q7J8/Ru933cOUfdrJ/93WEv8TwbySEAZLe5OEBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b54dad5-bdc0ea3c-b121-44c4-8c9c-a2bb88b462fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: daf485a4c664f83647612546da43b6f3f65b6de8b26ddcfeb1f3c8eb94e49be8
Date: Fri, 18 Feb 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645162584
