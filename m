Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A569E4C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647620184;
	h=To:Subject:From:Message-Id:Date;
	bh=f2OfcIEdVzEBDF7gF8hVN+GJZuTZ0k1mxh8TWuhnYWY=;
	b=gx+ftayK1IxFKjjzVW0tJ9BMz1/u0JuWeXxZZwzRJ3b6LuWpBs1xOsXptGN1w2sc
	cIpwGBWOac92M/Z/S3HL9OG+VUKwOlDKHMGaCUyr2XIMMmtA0wPK5EDzaDMB+WyHOoM
	vDKQw7RkaP0c7GLdZIhNw0yHG+F3WOnJ71VpqeDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647620184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f2OfcIEdVzEBDF7gF8hVN+GJZuTZ0k1mxh8TWuhnYWY=;
	b=XRbWzCwK3XowwtspI3R3QzSQ8N4Id2j04d59VYl5/hYPh+ZaYGp+/PNRZDMBmK+4
	dQTOoC7vQdLiaFMULqtP5KDV6FOlj/GVXhngndxtbuHasjYrEJAGiekrYpUGCqPkJjo
	0Kur4X4DmPCAtmOtlT9OZWtws436+RKVBLbCnYD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dd0dab8-9cc9fa55-31b5-41b7-921e-b9b54228d783-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd3079cb2c6de8946eeaba8397b84a0ff8929c2cf8c228d51a61d5fc4480e655
Date: Fri, 18 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647620184
