Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0AB47E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647177384;
	h=To:Subject:From:Message-Id:Date;
	bh=YElfWQlK5nQWRq44eLV4jm+19F4v0TCfqFiYjkB/yOM=;
	b=f4BWb5sHD100cAoVrfulDeip83P1ivBSKwpfC3og4xBohLisru8aIE2ryNdIeEWk
	B+mYMOnoYnNuuYAUK9BDLuUFQPBdoJPtSqWrpC3IXV50JqBoU1p9Y9+yYJPVj1PkFOy
	IGGIOC6cYUF82MeJW59UNVwAX9KNBZxTXaX4+VaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647177384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YElfWQlK5nQWRq44eLV4jm+19F4v0TCfqFiYjkB/yOM=;
	b=UDc7yJPQo3JdotY/KOkoIxGmUgBYsu/ye7sPZaUpNkPFNrvtmbhlL05TYITB8tcF
	hxbnw2GnfuYFPpKrgwAtuN0x49MwrY5Mu10uA5U4mXBKen+Q9TioAgug+Hme5fNd9va
	d1cwGWFzb2dDQ11Yac7ZlJdSRwuB5cWXAjcnE0W8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f836c4316-469ec8b3-0cc6-45ee-9207-c974e0c2e21d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd126e18cfd30f9b069cefc4ea628319ebf8b24f27d8372d839d3bc358274b04
Date: Sun, 13 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647177384
