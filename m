Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9862F33
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656512812;
	h=To:Subject:From:Message-Id:Date;
	bh=C5gpA6OtMN7e9PXaMIfcI+9va8oSbh70c64YMm80LdA=;
	b=OWYzE87osA/LF6P2MQUwGkSLHj6Dq5JF+s/eBnISQx1ONVROXR8/nhaf6fZLAJX7
	vVFbIY65Dht/39XDrDexp2LxDoIbYfS1pJSu4guHVocHOkzUHdYL+YGNrgEjDxsP0zY
	GYUEntYh5eFs77l8wFqfxDOyxOd6JL6IgmwPKAOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656512812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C5gpA6OtMN7e9PXaMIfcI+9va8oSbh70c64YMm80LdA=;
	b=JUVNk/R6nHTgt0iiXjfKyc5Az23v4UmSF82euWGrDP1VUAdWhvHJIPnCEAY/EZys
	9P00/5PJCOGfJkUSn+jODUPNCw/c6InFOfnO9+BcTsZuQ4InYes6iwN+YswunyetdyQ
	LAfiVj+8teg4/2/1HDovPKysdwtLpkgQaTu3fLOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afdb9511-f8c522dc-60d0-49ea-a36d-431780ae6505-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69d03f758d1d4205dfbbe48f1fdfec72fb4ab3e885721ec83ef716e3cd7f64f9
Date: Wed, 29 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656512812
