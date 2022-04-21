Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3501E1FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 06:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650523738;
	h=To:Subject:From:Message-Id:Date;
	bh=PB7D2xbK2r6JULvS3H8Zvrl7yp6TM+r/wuHMhDJXeyU=;
	b=isP+5nhyct7y5229vbVz/KWn4FLce5ZAwjMosVJBO+Wg9WyBHoKJH63ydvVk4lnp
	vp4HLnCmP23B1P1P8vdhfeiJee/84YBabMAQ3AMLbnu9oLo9DvLWshlReHir3kon1po
	ZeZYsaoBDhn9rkzOhZwYpCyOw5wIzT2zi+ffsV1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650523738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PB7D2xbK2r6JULvS3H8Zvrl7yp6TM+r/wuHMhDJXeyU=;
	b=bds7kB/eYPrf2n6qNCVE4eGI+hxhYXmFGRaJloU4c94W08F79J4a654zGVizJNlv
	MtgLsiMgIF2+r7Shz95Q2rF2QIayRnrMvRcgS8L27dPbmxsJ/DmoYu2pbz0lW8Jz8kH
	ZycuSW0qls6c1BZwhRdZE8VYNEZm+a0equSrR0RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ae1906e-26f8e0db-2fbf-4b26-b797-44dcf9a97846-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6586b7b3ed047cd766307bd6a1a870a7565f7f274575fd2deac72f01c8463ba
Date: Thu, 21 Apr 2022 06:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650523738
