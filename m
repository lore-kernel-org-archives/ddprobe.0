Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2721FB7
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 02:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648174378;
	h=To:Subject:From:Message-Id:Date;
	bh=6gNYm7wl5zcv5oeu3m+ARTCxAG303Gv1jW6hv9/OxdQ=;
	b=XB/piuC+LnCACizixt4KuHAtgxp/fiYOhvnQNwV9QWcEOaMYYCFqjq3fFMsMJywC
	Jv9GyAzBc5S7d1l4a6aI0HjJHWXSeV1UhKpsPVUfY8IDWlsUu5GpFustCxA078y0b64
	EkfxIkZ+Tls1DjunkO8RcsEUnbIYjdS+TBTtsLEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648174378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6gNYm7wl5zcv5oeu3m+ARTCxAG303Gv1jW6hv9/OxdQ=;
	b=HUcO0B+lCWZH01QoUK7DPGb9Z8Dpms/6XEIjP1H3t/p5xd1I8HvWDiv7OCaAdJP9
	Epf+1y1ebDFCzRZnA+IxUNP+Nj6bdYBRn6d2hAOFNwVXwt1gX+UbS1XwV9TY+t8dcOR
	wCJJ8oNOznaqEXYlhNT38NULLC74/KOeKaLLGskE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbed92d54-60f3a364-6935-4c01-8f8f-7c954d580d34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 054d6f06220282776f74d6e6305e8f9572a38bbbe475a14e124135c1d2cb38ea
Date: Fri, 25 Mar 2022 02:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648174378
