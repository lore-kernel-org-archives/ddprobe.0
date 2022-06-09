Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CA82F23
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 14:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654786259;
	h=To:Subject:From:Message-Id:Date;
	bh=TteEnHIga9pt+sbl6ZZVNjXgWeFvfrZ9XKnDAqFtliw=;
	b=ZvuP3ZG33Tz7nM0Kxd0KEsghycBAw8Sd4STtRN8kvtOypmN3LOZCigXhPfgJPsff
	/RgVRnxqxk0rnzoHuf6GSlHyOg3jIusK4/vWp5UdcUQM838Bq4xRik1LVsq/8ReDqwZ
	LoHE+ufhHm5XNLhC6d0RgXB93YaS/91VO6Qen7gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654786259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TteEnHIga9pt+sbl6ZZVNjXgWeFvfrZ9XKnDAqFtliw=;
	b=RXbyjEjkpP5cK6mkjLRVyzNYF4pUPzUR5OL3g3GznH23uX1djp0oLY78+kw5bBGg
	kT0rwxsJvd+yWLiy1brxzFwL1fSJEWyeQHS+4Kd+3oRNI83dC8QQWIfv9B+xRE1P/Bx
	1WWeDgT9XJz/ncbAWnI91xh1kZY8iH2gcxDoSeaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148f27935-f7a332c6-4a96-470b-b5b2-a4f8275b0c9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fff4fa6a238ecde36a1f44a3387eeaca79ade15d16397243c4ae364732dad2b
Date: Thu, 9 Jun 2022 14:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654786259
