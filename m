Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE987E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646479884;
	h=To:Subject:From:Message-Id:Date;
	bh=7zsZekDTB5TJISkzcvu0O9P4wPHPnS4qJVXENBJiykM=;
	b=YYqr+pWel1KSAOUPi5oS8bKEoGCYfUmAx3gPC3s/Fq05/8dF8iPl3Z9lMRjh3ELY
	rEm82p77nrxwkw7o0s+lEQ6zMsVPXiTCi9FxGyVS5YCCVbGWDTqWERmI9gfMJ/efml8
	gUFznsOJzGXAD4Xualc81crz59qZXb1WDdezD9nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646479884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7zsZekDTB5TJISkzcvu0O9P4wPHPnS4qJVXENBJiykM=;
	b=eXQHfAUSuDsM9UvS1xTFuOC11B97lxx6+8CMjFBUQitjLF0KEb5h5eV/Q27sY8Dc
	0ehxyV96G6FGrg+JSmz1L+8GqRjmMFwmIwv4YEPLy7bdU/AoqVNrts0dk1/U0j2s0LK
	lN/kKahFPCg/Bp/Iw9gJyM911AZH3CxVRbR5umC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59d941e3-bb825a53-167f-4cdc-a9d6-3bbb5f3e71b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b64615d4d214a8a670ad57c535cb4dbd4d785bb6a891f0a53927c17d870ed31
Date: Sat, 5 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646479884
