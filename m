Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D4A7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657099612;
	h=To:Subject:From:Message-Id:Date;
	bh=RpTbNAJNNKxUXX5FNTLDxZ1PJqGs9Uwfgh4m93EDe8Y=;
	b=VbRoFXNwXXMmZK2UY14Iuy8VeWIGHgr7WeUobI0j+6N5sKud+iF2bhDZNrQ5O/fg
	Sn+n08PNdcGV7LtbUnl1AIMxuCENJzOGaafd4X90P6O9u48mfnUo0dmmJ3Y5CHzoKCW
	v1JFxvZndJCCoVEtGl+a0W14KKIEljed4FIzCxP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657099612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RpTbNAJNNKxUXX5FNTLDxZ1PJqGs9Uwfgh4m93EDe8Y=;
	b=fMntAY7nt24U6Y/grEhWDvtvYfAi9doLLOQpsCFtJ44FJqL06vJ/Wu1O0o71jiH9
	1LkNzm4Vc1OyhabfIEX3dIYyu4jmdLdt+0QlbiBeTYFmfxlt5tUcvZprXMipooDhgXJ
	rB6zBIa48norbjOX8Gv/DUWt2xOm13RDYBhZpqiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2d570a9-1afe90ab-c42a-4505-ab88-dfae02bf3933-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00c3575bf91c8b0b6eeeef26d3c7cebd331c59264df19d3b5d8fb67a7f1f8790
Date: Wed, 6 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657099612
