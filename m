Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E997B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 03:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652154959;
	h=To:Subject:From:Message-Id:Date;
	bh=nE6WqDFIBBao9vn7+IvDYKM5O3crU3xkLXkjjt5JGGI=;
	b=Aje4BaQa8vPBIQQh1Z+gZcbV2brhd9nPC8LjIqCqj6g8PG7iOKKHIw3BWP2cSijJ
	LxTX6qPcLNEIfJ9jeu1+0nNMuEyCeIsO4fHOzEwPNZoZgxKZM5Dj83FmFeGDBj+bmCP
	0uC7OUbNYvG54SpyHXGY0x59tUuJUCORtlJrgd2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652154959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nE6WqDFIBBao9vn7+IvDYKM5O3crU3xkLXkjjt5JGGI=;
	b=heaFje7G9ZvLuzwe+YMKbT397lkzvT0TYQK/SUTfdVm4G0Hvgo7Ct4KnALXos6U5
	lCatJKo5tZt//gS23CM8FlEdZ+mKuTsHUay/muvS8fzS77i20jbKTZDylYy99xAlNfm
	bZbJRy2yel9K11OyCbDAgkn/jm2s4BIAggM7YU6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac1c05b8-56e30d1e-d4a4-401a-b9cf-58e728f7755f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00f88975aa3795d1c61ba7e3e7e183e553bd87543766a568b46b838b6149b3e2
Date: Tue, 10 May 2022 03:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652154959
