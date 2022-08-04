Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E41650
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659591652;
	h=To:Subject:From:Message-Id:Date;
	bh=xK/c77cg5YKRyXqukIEHH3azCGZNJKQW+mvhZrBqHNU=;
	b=ejJ+7Qj313YYyOsQX3o6DBKoYDNx+RtTCza8L/UW4X1x74nugzuOPMAF2jOVSvbL
	73wnnXFjzamNmV6zPsTC/4Tvid3blHzWikIH4Vv+AtVXYGozRxHreQpqVnfGfssKqaD
	CWQB99IUDBq+KWIZv2Mq5P+OE7z6Y3Q07iwqelzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659591652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xK/c77cg5YKRyXqukIEHH3azCGZNJKQW+mvhZrBqHNU=;
	b=ZRRlawVCgD8EmWF/iFWojZAPoo2FljAGEGMDXCtCTu+PLJemVGbA2k2S3OtnIC3k
	MJGvw+4rZ/2HviHNdE8aFNDtBOW0/XR9dkqFEnLTWQNEgo+H9Rb7mhKQ3RSakdKA+EY
	kWpube/qc5Ie0+L6XuihAENMqp82jE83Muqi/QMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182675ef521-de0a87cd-28f6-4b52-8a97-37a053fdf4a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0f4fed2831a6ff6910d32c0d13667a53208c8c37952919e2a9ef44aa08cd3f4
Date: Thu, 4 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659591652
