Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3662F4D
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 21:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651093378;
	h=To:Subject:From:Message-Id:Date;
	bh=nbV2p3eqeMOUep3waI3xFrwRgXU1ejrpabzQP2ywSDk=;
	b=M1bhhaoPo7PoW4+ZjQjN+DxVHnSIbEzNYae66QB6y/tCrqVPv733HyUdasiX05Ep
	ToVPYA1lvdxqaisGWFsp0axSph/gDmVF8IJ2RhgB3umIBKV5IiPVfvnzYh18UIwKQNu
	rDYMVnO2SE50iKcke4xgE01/TBbetZwK5CVggFIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651093378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nbV2p3eqeMOUep3waI3xFrwRgXU1ejrpabzQP2ywSDk=;
	b=AcxhVFET7Q1anaz4FWm/0AzNMebX6DWeyUzRUr/PpjO7WafhfVxY4UXZE6iFmo36
	sxbkVBg9YSIzSutiHVTjMtdeiFDRdUaNJQk77FPnlH6CnpXXfcUO3zOxjr8lqt+8f4S
	tYMVkDoPjnUQOsb5SlV1NX1EEp3DF4PC0EAGMPBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806cd594f6-d75af90a-8f51-4202-80b9-d973c595294b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62c200e6a03d9ccfe5833c3f73c68b218ef3feb774008404602d5dec3b8a8ea3
Date: Wed, 27 Apr 2022 21:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651093378
