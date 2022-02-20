Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3F617E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645337785;
	h=To:Subject:From:Message-Id:Date;
	bh=ys42h9vltGdo2XfLAgAs+Q8XFJebzEsbgqbD2pOSaQ4=;
	b=Ls1aRP8ZDJHGnwg7q2VpKrpl4Iyj02mJ7OOcH5wpXFuj3ine4eeBNXnPkhEXd8pu
	j6bb0XP4UBShbCa5tnVVWx209CBN2GkCt64N7SWmEzQ289qyEHWOCk/xl/6raJ5xAFW
	LIDF/DgVKP1MzZPwTBrynmWDwLzyBp20wpe9C154=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645337785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ys42h9vltGdo2XfLAgAs+Q8XFJebzEsbgqbD2pOSaQ4=;
	b=C0+yZKhSBYPlIBW+8ehcu57roDRFAocYxIeirzQ/kEFYwtDLkc6gQG5wY9e99CjT
	ZvijU1nA/koI6l7elSRWdcoxWQBVqNEDcIe2AgWJwuKCkTLGLfysrQFuk5hyQjnHrDb
	O4Xgbyqmw3V3PDyNNkq5IsRDaRQbDJ+GIoCJCvqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15c631ba-da1fdf96-23db-41a6-9cb8-45171ec7df42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 902e0e6218cc8940fd66ff080dfe458747cc56fbc66b168447b641f1f19bc609
Date: Sun, 20 Feb 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645337784
