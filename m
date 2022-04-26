Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9F62560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 16:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650989939;
	h=To:Subject:From:Message-Id:Date;
	bh=K8PhdOBpvtk6BQ5GcOmEz/939eTGr3D7SgSuh+snlbQ=;
	b=a3Ej+FeyGRqYAKWhA1N/Wgal9Gce3cHl2N7N+QC91d2p7Aqv1/oOH6HL3VVgUYya
	hLHivhazSH7aikfgm8+d2l24Yue3x4iXCSqo8sy3blWfTZDnOw2ji3txr58TwEBMMOA
	q1sn01nvZ3ddHeFluqcLc2PThMxilHUng8FrhUtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650989939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K8PhdOBpvtk6BQ5GcOmEz/939eTGr3D7SgSuh+snlbQ=;
	b=VbQrdqWfwYbbED/rx9Ms30fI9quZK8WE/15N005assZetJ6qv8Sryx5+XzWAmh1P
	kdWnOJWkJ856QfRX0lfKt4TyZEw5Jh3w8GS4RckTe0GKmS3O5FHH4zPe2pEuwn21qzQ
	Q0VjAjEuvbEIjpnFAeYXjNA0EO4u8K5gCMKPSNyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066ab369e-134e4750-b283-4ea0-a649-f90aa6470a3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bffa3ab71f6ae45041fc313e195dad6326b079e117b7cfa3050b2fa7d59666af
Date: Tue, 26 Apr 2022 16:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650989938
