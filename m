Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A062A17E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645333285;
	h=To:Subject:From:Message-Id:Date;
	bh=/5Rv4XiVEXljvAqYsA1rls8Je/4zFo0OtT422/W408g=;
	b=gKXPdzULzQMCzxsv6fNOoR8mS6od8uTRfdAyq08B0bYyXS5eLQJxJS4jZE7o/z0t
	C8KqjdcBiTsHGCUE0DSl12qLDg0NtdLrWrJ+b3gtqZHCL9IIgy6YIsHaItJBP7v90v7
	0hFaDMVTwoQPysAiFO41vlEAw84rvGz//1H04+iQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645333285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/5Rv4XiVEXljvAqYsA1rls8Je/4zFo0OtT422/W408g=;
	b=f38gX77QT7hWMqWZz8+gaM7kejgcwDaTB3NCkJIsJHudKtka+BIP9THSAfFoGbbN
	k8U9QuPkpIAuVhZT0I+sH2T7uxdPJ6BAOlPJdj5JRaP6RpIhl4QYaHXnyy8o795Kcpf
	KZ/xySnPzOWT0/fCuXN30iadwxhiVdqqEYeGYeuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f158187aa-2fb3e7e8-2e7a-4862-98be-10064e2b7214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bbe3f2d5b59b83f08589288a5b1db5ef33b27493b226d3598b75fa9f0d86032
Date: Sun, 20 Feb 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645333284
