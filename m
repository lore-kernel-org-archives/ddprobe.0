Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07B52CA2
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660675253;
	h=To:Subject:From:Message-Id:Date;
	bh=mX/8SylxVQjY/o7F9zdoCJ9oHSuLZZciF9WdzwMe6sQ=;
	b=WYnC7MelOOG9QX+ZII8F+eIG45Ro5gwNrEh1MfOoVNgFFv6qXfy5InnCCZVEpY2y
	s+OSDqJMVREVX+MGwxNvfZpbW6ydHto/saKsdGw3aHZWMMEkobg7gkgs+5iCNfQti9F
	+dN8uFy1qKtoTL9eKfKJXeCsQcQK1Eb5fTsI3yL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660675253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mX/8SylxVQjY/o7F9zdoCJ9oHSuLZZciF9WdzwMe6sQ=;
	b=UsSRD5m25YaG/RuMa8KcnFTjpVM5UAQxO+FUn5zbm6C92l+j44k8MK5IfmWcmmg7
	PFn3D7Nd5FnjpgYqj7bZRaXJb0mkhbhTzE2h0a2sJ+JarsRDSDj7VFgQMbZc8HUWmHR
	504Pd4Ov2ldGg71mCHOXnHsoTtvKF1LtdlpiADt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7f5615d-e111fb95-5aec-424d-b73f-8366a178a109-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99b470278cfedc5c61dfc15cff45aff8f5b55dd03dacf197cbb849401c390a65
Date: Tue, 16 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660675252
