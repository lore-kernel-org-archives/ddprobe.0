Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9731FA2
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 22:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648937578;
	h=To:Subject:From:Message-Id:Date;
	bh=if+rrrIdu1FgN6TFEhxF3wzZmUD8GDXgB9wnxUHFrk0=;
	b=MSTqG/fu6XLBy0OoN77cFuzkFYabZ2j3zlipbd8AYMm+TLiPblRPaJZWwsYi2XKs
	/7kif9MSB67iRDrJWgd8HwJ4e8M3hn1KiBpB91XRw3LryeHCjD8rgDkMQCb1WfR7Z3j
	KBGgd9gDQD6u7m+qi/Gkq0ikJOOn/JRiSaBID2BA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648937578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=if+rrrIdu1FgN6TFEhxF3wzZmUD8GDXgB9wnxUHFrk0=;
	b=AmrS9PM4j3xcAr0FfSDwezTo2wmA/Q6GZGhDij/nTHyk6ZW+xnq5vwRl2uCl0Olz
	4Ua+j24a5KcjtbXdmrpzZmj544wlkYwt/HCUwQfofr4/10g+qT+/Nw2B7zF5EtCCelK
	XBJJKyp6Xb09+lwgjGsom1Ub484ntW7+R3wxiMC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec56af0a-fb78a6e7-9de1-4928-bbd9-8f01eb8d4213-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bab6b2f8b8e7aac4a5e3d093b52829a2b7a50c77f12c937d107963cb4b77042
Date: Sat, 2 Apr 2022 22:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648937578
