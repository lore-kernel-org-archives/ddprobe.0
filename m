Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477BC7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 13:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654695779;
	h=To:Subject:From:Message-Id:Date;
	bh=cUFec1f67sEPUNYAlJvbjJhGqg9+BPrkVFIncq8aLC8=;
	b=C55grT+WkWqmFzC5SVuOGHNmSiPfAVREB9uoCDicmlYvfTgL5YAiPyCqdWhrQ0KN
	jvNG1NWUMoPK7PWqf64a9JwMuNwoZfTXNEgnk6vUV0qe2IfJqV10tM0JuSapxV9wv/F
	gHs33y2YnfQFCLFxp6EyYflL70+eSIpt9pmzTcpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654695779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cUFec1f67sEPUNYAlJvbjJhGqg9+BPrkVFIncq8aLC8=;
	b=VBmxmxAZSBGZ2RUHJZ9AibjmbOMODPDwsyRXX5PGv2GUUScB0QxVlYFCQFDdjiDi
	6URgFBDsdMIjtyXG/q9Y+Gdq1k4Rof1EnYRGj14PYQyK2vAAEHNKlQnbp9fiBIDmPCt
	o/5iWk1nVPcWjUXDHeDWFmv7upVuqZRg15QQfFMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181438ddbba-3a931a2c-d5b5-433e-b77c-a12ff4c44d26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0e8af96f6acb8b05508283c74e62c03a601b3f19cec8767d4afa6a732e2c958
Date: Wed, 8 Jun 2022 13:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654695779
