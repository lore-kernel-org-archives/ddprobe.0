Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E67E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 23:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648338298;
	h=To:Subject:From:Message-Id:Date;
	bh=gZih2WnxT65oJUfjmbBG3VBeYOnfaG0fRb4izh6qXmc=;
	b=H5HBEM+FxIOoScHiXzRQJwbeY0w7FQJKhHdSfD3vlqpRlGr/KaFMHEPuo30pqbmH
	5HBt7SNai0GwYhr4ysg1bg7t04a96fNUc1/Qosz/osOTMpbyiSGhrtLceiSey0F5DOM
	SM7jb1W9JsJDwhbo+SQ9h925oNpvZJcxopU5BidQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648338298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gZih2WnxT65oJUfjmbBG3VBeYOnfaG0fRb4izh6qXmc=;
	b=UDymawfHuCyej3hh2t0pYSTSfNv+XbrGoedSxgHllI7i47p+pra1XdS8NqbHdrqk
	hysdQktSKGb2LUHuvVJqp6myEg0zWxbEVvMMysFwxhtG0TRk/V85zW0HJQ+9leQaTf8
	Z0r3dvXhCzyFLjBHa/qDY7tZ/LGiWKyujAF7CrR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc89e65c6-0fc7f813-e5f5-44b4-9a2d-6b88f98e8864-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64d8e57476f19bbf719684b1a38c05e5f4e3e8be68845b4594b26d10b5835c6f
Date: Sat, 26 Mar 2022 23:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648338298
