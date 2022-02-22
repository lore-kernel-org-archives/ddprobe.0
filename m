Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798022F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645539685;
	h=To:Subject:From:Message-Id:Date;
	bh=NQ5ah2SXvbZgeVsqYqijoRDXF+4tfbVuS85gsAtZpVI=;
	b=i+fwuQYYiOnEiccWBvH2nLXHMX/IfBNSy/dgxyAKeZoxM1l80+oq+y4wl27QxSka
	f0jqHdgMH8/jGx9f0+wPt7/pZ5G5l0syTBTKNT2XORNivXbbkFG5NoFwSRggTmHleuu
	lV1P9PqbYET3fyP2dtonjEhmT+kZ6rSyBLBwNqqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645539685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NQ5ah2SXvbZgeVsqYqijoRDXF+4tfbVuS85gsAtZpVI=;
	b=AQQtIZ6ao36hU3K+pRuQu68IcWsmPoKdZq8P+CRtm2PqHyFENqY+nKxXigmykd6e
	TIzWoshdz+CuNQVGJJsNzBDPLs7pyNiL9LITOJ34a2ofzJ8evScIg/p8mxYcK+gxnE5
	z6z0qIg2lGptFqwkadwocEvfD3Obdx7tMrle9qLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21cef1ae-fb6e1d2e-04df-4cfe-a5a6-8c990694afc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1c1b3c34a4cd2d02e3013a643fbc749526d397cc47faae0a2f4a48721d21b70
Date: Tue, 22 Feb 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645539684
