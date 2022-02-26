Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F53D367F
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 02:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645843585;
	h=To:Subject:From:Message-Id:Date;
	bh=gu2bonsF4NPFCHjOsNa7A3UZ/3Mujc0JThrHPm3KUWU=;
	b=PyhLxVWEDAwDOl3ilhvCazyMPr6pLTli4x/3Fh90SS+SWBp4U8Mx/aG5FUtkJ1Pv
	k3pT9y1vPVTLY3VbSmly+NnRdRLDVlz3/2x1OESBrwkRp9T9QeTrncQkqiim9GqmRIA
	sIgcr8oDQP1yT8tEcFchTRMZ+g0wDd7ihD0YrFpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645843585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gu2bonsF4NPFCHjOsNa7A3UZ/3Mujc0JThrHPm3KUWU=;
	b=TPTbo/VXQanpWyvcQ7VEUDQKVTvWJpzQaBb0hXmdKsuseM0jJCIJ0RT0gOLOyzOL
	jov8Z6VGgS8/Ti7CaoCn/UxWOwixM7J/UuU470bW2L4gS2lrxduC1L3IoF4rjgPCtQY
	Ctc0ldoSZ/edfSXg22tkJY1cknq/ONElhmr7BmCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33ec1710-90ce9d16-c882-4862-9fd9-622f0ad3f790-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6b6a667837c88659f6cf5dce4bb75d541c9ece3bb46eace8b4934b0d35474e4
Date: Sat, 26 Feb 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645843584
