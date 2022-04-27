Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045B17EF
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 07:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651045138;
	h=To:Subject:From:Message-Id:Date;
	bh=Kwf0Q10YQI+EAO096Ue1yZHy3lDog+Pl1vkOBYdC6aI=;
	b=Bd0ObHbAhfLPQHlrRiUMPmNS9fgSDaEiDbHyVt5jGK/gQmMnGpGard3iTVhGKb1G
	fwKnoXiat7uTAoUiU0hTiXzAx7nfVFOH5StH/7N12c00e5X5UorgDLj7K53i/Yokg9H
	4ZPwK97Nyc+sx25y/i5zoDA82+RVcOptPanugcBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651045138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kwf0Q10YQI+EAO096Ue1yZHy3lDog+Pl1vkOBYdC6aI=;
	b=ZoT+yqnSQPG/juH19gOG/3v7X7m9spD9tqu1508PamehxjtExGAAsXAkfCCqaI+R
	808uLgEqAcMrlxcG2EFqVfvY084HiT6DIDJ2CzHU/f1XnY2XhFzSZmzhsNxDp2mt5qm
	g85gD01iDTSzzu6aBcDKsU8Og4Er6ay1d41hKI+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069f57f54-97b2d116-3b2d-4f94-a6b7-fe40bb883893-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72df01bc90199099c526964a0dfcf443e7153a5509181dfbd3c56700844552c0
Date: Wed, 27 Apr 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651045138
