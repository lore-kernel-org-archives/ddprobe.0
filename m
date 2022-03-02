Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95D82104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646245885;
	h=To:Subject:From:Message-Id:Date;
	bh=7/VHzyhr+JfA7kws5qqZoYIzZ9rNGHVR1fJ/w8sdIyM=;
	b=FLoxWxxQ7akQEwSIAThEaU9oThTDEYdk9xa8lNEXD14iumbP8fFANDLWBBQmyAjC
	ZKXBvLScQ0EL+GAGu/gR0z979bzmw3YCyhh2LsGAn7FWrNbV63dEraj3pvtKlrOGWR/
	bP3vw1s/f9xOy2Yq9F5yJllM9m6B6chPyffbbxuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646245885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7/VHzyhr+JfA7kws5qqZoYIzZ9rNGHVR1fJ/w8sdIyM=;
	b=iRw9DcjTH4RtrRucpjrFAewU/QIGY0hIre1kNCnGhuyxVm10kUMUErpYqTCxas4f
	n+dwJmu731J4J4kIDKCxytPiqa7s7Z/1ezSxOCeF8RitsqOjszFydej5V8Q6ivmg6Pi
	OWpoSup2zvvBq8O7fsQ8E6QVW0fHKkkyAAn1QFXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4be6b3ae-0a0867fd-7cbc-47c2-ad1c-5235a2a5758d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9207775cfd1538142c207c4147acd71521b2d81df86626be07d7128ac9a9acb
Date: Wed, 2 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646245884
