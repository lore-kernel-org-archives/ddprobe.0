Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40DC4C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647615085;
	h=To:Subject:From:Message-Id:Date;
	bh=nlCsvWYlyeOM3Q+mr5JBacuu7d+Tr4v6e4wbHM3S+v0=;
	b=YrzqEa5us9HTBBN7cie2pnf38MLWeLEey6xe1geljTav+1OS1Au3oiae245k8hE1
	9Sdwe3RBGnJmGHlI7D02tqacgVV5t7yDOrDJDtc27SIZ2IEtR3q0urJ8ThO7po6Gdd1
	Cta9zmSrSPX6e9DWhSfUBps+/zLQo20zK+N2Xy84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647615085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nlCsvWYlyeOM3Q+mr5JBacuu7d+Tr4v6e4wbHM3S+v0=;
	b=JA+orJqE0VxjkzkqhowY3vSyRre6ToY0Q/UqE1To8qscFiRiIbSRZHN9Zfeh6S/p
	hV5C9QCB/JRvn6qk5EFhfa76IdXEJlOr1GhD0nMEWr2sxShMr8pvidHSx0pLxV0pG22
	d090Dg4AB9DpMhX0UnIyxk9UBVwg96DNwgvuEFzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d8308d2-58966bfc-79f8-43c9-ac09-c100812de9ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 075886ed89778b5c4be1594e9069aca0113e5d36162df8b37d9abab13595ba7f
Date: Fri, 18 Mar 2022 14:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647615084
