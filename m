Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96847A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658893853;
	h=To:Subject:From:Message-Id:Date;
	bh=+S2LdLXBNSrlbrHtmgj0GI20hEl8aIUN1DyHo5N1/aA=;
	b=atH+6thWhv4AjbIV/Oe70hCIvN1+AgCQszYUcuet+aldGbSP9dC8wcQ3aj077d1j
	MFHw3/0eR8ysq7vpdZbcQK875MtqHtOu+TpkXMnYvAUbEJQlwvptKz4YqRxlIX3qE62
	h2eN35V2KFUSWlFzAmYZn+c9a36eeohIPVm4uivU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658893853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+S2LdLXBNSrlbrHtmgj0GI20hEl8aIUN1DyHo5N1/aA=;
	b=FGlbQJMO1TeZUUoyr8q/xtyIxLMYE4YrsiSbOTDEl609STe7flDsl2gWqkQJlFnA
	M6ABvJ3p+DT+V7alDpclFcwvkmk2WTYeG6a39wEuuftWBy7657xPLNMHXt/k5a6Rp+s
	+733gpTsQZZKuuEu9cQuiwmwEX3IXBvTilISxUXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823dc75f7b-71ffa5e1-6a91-4f97-9cf7-cdb83e3bf4fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2ef59ea0331a7b312107f7d09624430ce1e95d6a15e1d390c0e91a920769516
Date: Wed, 27 Jul 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658893852
