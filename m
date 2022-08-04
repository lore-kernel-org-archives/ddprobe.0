Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665A9210F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659611452;
	h=To:Subject:From:Message-Id:Date;
	bh=UClLeH37+d7uhA1Z09fmAoBM1BKJXHFftbge8++8MWs=;
	b=GigR2ITlr6+TafsCiiRiwXAyH/Q6IRY/jZWYgiyb0f2Hh+zFDOpK6sR/1I7Ojp8F
	iWW+YePoU+p8i+zkcBdL5KBR56LrWN+47VJA/E4JjEIevTlAIr6QdxYa18aBwuus6QH
	PQ7+APOtC34iI/AKSeo60OjKXlCu55h4+MtbbuYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659611452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UClLeH37+d7uhA1Z09fmAoBM1BKJXHFftbge8++8MWs=;
	b=hgDQPY8XGXffpwcPKJQDOWR6F1zWqn7RHPoBvlxgPfAD4P92XaWqRrSIjKyj9lup
	AYBqKIwDn52TIvP72WwtpoItmzYRlIGsabgLrJhXIMhsLh6NVoyDxUHulrEriL3KwB3
	sfmqepHGjrNAJKLXd8EXPsW4idJ+6eCtoSuOBOu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182688d1485-603a6b32-8f94-4f06-b189-8134fc6ec9ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a0b69a24bff52bf9f515bd474269a0d387702b13903393003cdfa43d7be902e
Date: Thu, 4 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659611452
