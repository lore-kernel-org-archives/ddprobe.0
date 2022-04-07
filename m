Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756382563
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 16:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649347618;
	h=To:Subject:From:Message-Id:Date;
	bh=heL58t6/8/ajdnytpzKdvTZae7zlHj1kllbYLSQsMN0=;
	b=D2yDw9C1gUBlXtbGrge2XIzr7hHChZJfxM8napGiqCzogfiSH86IXoCnQ8cXx2MX
	zpms6HE+7GkBxMUpB7tbL1hQdxZbNiZc2PYEiOO1lFwpm6CVjcgrJqAD19lewWt/lg/
	+E1SIzeV0+R8/T9XOQ1mQ4JovAlw7bjX7n+X/k4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649347618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=heL58t6/8/ajdnytpzKdvTZae7zlHj1kllbYLSQsMN0=;
	b=Fzl2lZNRWVyN8XmHSy+0t8wuVImVlyrJhr0C7PYpdxImSP0Ca4gdb8SvIoy4sTA2
	t/YBVe/PFKMZXwfwTnPtBIBQcYSTquom5WSln8S7x4M8lp7l6ferRuSBdtjNtYOV2Yx
	uNH/+Z2fjTqZzkC0Jx9QXP9AGplinOsyUKxrQr9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018004c7667a-61590611-5dc8-482d-b2b6-1fa2f603eb0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19e2169cf4c3920d955f74ae4d7328e4df4c17e6758a675daa527094394bea87
Date: Thu, 7 Apr 2022 16:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649347618
