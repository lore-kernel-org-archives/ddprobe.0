Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC123696
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645046184;
	h=To:Subject:From:Message-Id:Date;
	bh=TpKUGumPhMcmjhbWRVKAYHZ+tcS9ScB2ye2u3/kGZFY=;
	b=NTRPbB05TP/5Mek//DZdI35V1HsTRoEGpuwdZZOA3tpyRdxxE7ngOlEZ3fBNz42N
	brmxEXsjSjQUdMlx1KGX/uoXhdLIZNiG38CiNYr3C/Ks/04NeI4WkRmdLEY8e4H4blR
	+fbnlY2ssRP64LibbxdBrslAR0XDcNCj6VCahf7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645046184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TpKUGumPhMcmjhbWRVKAYHZ+tcS9ScB2ye2u3/kGZFY=;
	b=Wu5m7uUQ0zBYZYF32+gRIZ1BPinm4S9u2aeau1d5EaDU6eZFhTpDNHnjZAsLTw58
	wdoEANfdZaQpZZeADcAelxaLfaeQ43Yt92dK6BzGkh+PWPEBflGnOk8a/xMixqy8h8u
	5sjAZeinG8d2SlLraoyhFSaT79jpx9ID/1nTM1Xo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0464bb6b-df710df7-996a-4a21-bd60-374fd4338f0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f7b4bd1f1d81c7285eee92daa4648a854aa94d5cfd6b2a11fcbd30cceb5945c
Date: Wed, 16 Feb 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645046184
