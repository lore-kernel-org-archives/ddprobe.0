Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6880D2F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647105984;
	h=To:Subject:From:Message-Id:Date;
	bh=PEcu9XSA+xFSLfAyGww0IluP7PCDCZlvvnJ3iRQLRpU=;
	b=DnGn0EGKy45WIEPra3xRgU/ZY/HdfcuOW+xtRtGqwrRT40bZTMWLABUnNReQS8gX
	gS5bmftFYMxkuPxuTge+3zzjHbQ0YyK4nODh4FmBGNG7QJITCBtx3gMVhXt81qxTL0O
	r4VMKn64A0ziuyTP65TepUHkESOrEOgqLoB31eXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647105984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PEcu9XSA+xFSLfAyGww0IluP7PCDCZlvvnJ3iRQLRpU=;
	b=enan/wq4B7Be2VEDzfLDGzzmcIBRrdMjXr9Tkdqo7GxUM5jCorbQ6U/mfQ1XwZbi
	rJ29lqDIZRzlUJiWkIU9nWnVqunvS4KbobVkffXw3tskRCfZdBBfnv7H4X55Qgvr9N/
	wyEhRpnmiclJ7fPPFmZ/81FEgN9Ng6VCFKNaCRZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f2ac901-0146b23a-b23b-4a16-9875-05b589ff43f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02e4498dfaa6ff97cf943867948ed39fc43d57925ba7156d2bfea25b64860774
Date: Sat, 12 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647105984
