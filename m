Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2AF437E
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646734884;
	h=To:Subject:From:Message-Id:Date;
	bh=9TYfU43T4gHUXc6PAmUpn7YFwSkhKvTCmB1488sK7tY=;
	b=EE6VkXsiRrWDKu8Tg4UeytGyD0zdnIA60jgex0SRcFmDJ93MLE9kqvprSOFYN0WB
	ek49ZoBhrFLdoKEfFVcBjYoFluLvUtQQGD03iPunEW7gQiY4sef+k4B2x4yH+u8+4R5
	fMetcDsibtDFhLP6wPriKNiUNw1mOvNnryFtJ0dQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646734884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9TYfU43T4gHUXc6PAmUpn7YFwSkhKvTCmB1488sK7tY=;
	b=aGNGIukBJeYdujhzzjc6BHaYtRL88ik2cvVy1GTWaZkfY4MMSCd/0oXBqOMJwgLg
	3owt2o6FztOrBhWarhBt8U+oX3q+fYPQg8Cs+Efkp5Aeo/yTjP7PuMbdyhn7MRCavxY
	K6EIh+aAQJZyjvUosfC1r41K9opN6zuryz5jY7L0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f690c3f6b-52ff2e13-6c89-4bdc-bf0d-964ef147b63a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c41854f7fcd91b2201f6c6e147285ce52d22836a05abb67432b9fb90691f289e
Date: Tue, 8 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646734884
