Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930B02919
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645207885;
	h=To:Subject:From:Message-Id:Date;
	bh=72hkd7+16YG0ZSeGhc5TUHuniOAMSmx1Go5cWys/ylk=;
	b=Nd2SYpqDuovlhBvMLcUa4QB5kV4BH+zgycplWhI0BMMiPkS5toYFWxhEBaqIEkYX
	ip8LLSFOHuxq89GHFU7pOwS93TvVy6a85ffwpAZBe1QvhyhE83m9giuCmMFjyRgacis
	ZE/TRk1H05dyXcqkIxTNQS/QH9SEeSIeaNw8stOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645207885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=72hkd7+16YG0ZSeGhc5TUHuniOAMSmx1Go5cWys/ylk=;
	b=VPnrG1S1agDFPZ0+IniAREhZW7qndRpNc1MlAaqkfvBYkECzrg/fR1KK3dG8lzdu
	ZXTa2Y5mqhPxEBFIzaA5rqE8IdODe5S9bjgsO8ScLhg6lMrHwvn2pDXk3P/JITnX5w+
	A5X8sYb9jCnxZ4zBDLqlglkYxTPoE/ezDmQM5czM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e08148d-1c3bdb40-62e2-4b89-95b3-dfc68e5e2ac2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3fb6738ac9ed0f836a1f8a354f21f065e2ae8f8a87c047b37c0b11c9eebf1d9
Date: Fri, 18 Feb 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645207884
