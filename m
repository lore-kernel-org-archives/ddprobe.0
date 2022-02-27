Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B0A323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645965984;
	h=To:Subject:From:Message-Id:Date;
	bh=8JZwTpfnzcaVzqugXvclTGF/YH7o1rN1TBVTiRKDfyM=;
	b=jgGhu3StlPb+QdBNaoGeDjiSGir8u2w1LLIel0L28PmmLLu3W1R0OCGtYOLBsvOf
	+jGzh7A4e+HRMPGs3bmxrhNwtiYWBYtGuaRU7veFoSgzSvXhxt4qIEtZ7jXklpMUzH8
	jTIS5eDkCfcxpnqB05BgQu/rqLa2jea6TgYLAOFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645965984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8JZwTpfnzcaVzqugXvclTGF/YH7o1rN1TBVTiRKDfyM=;
	b=kAF4DHOHlu++nVsXi3l4rBqMZ5G4sLg8Zkxy5RdPHmPcLTuGIIxxDmXU842n+Ywk
	h6DWAAIx3m3Jt0pzJMeVmrz2deP53Uvs+i6KBYQdGsbaCp/RrtVCAFRvLOoyO7MHjjr
	MaYRP1NZPsoJ1oKTz23gZSGopnhC0G+CqWvaEB9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b37c3e6-bdb767ce-e1cb-4351-a4e7-a75f868c60e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f7274bc48edcf073ea1d10334e094422fafdd55ab30fb1153ecc4d8d7aca03b
Date: Sun, 27 Feb 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645965984
