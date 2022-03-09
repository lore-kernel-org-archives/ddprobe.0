Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9465717C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646868384;
	h=To:Subject:From:Message-Id:Date;
	bh=JnFNZKItsrzN0CtL78EUkQcj+qGOOIqxjbOII43Cm5A=;
	b=ID5UrwFljLg4VRR+aVpubIEGxO8D7Cs+z1aMRhqzS77Rala1pHeT+DKzj7G2sJbg
	wdJvC9zKOgzHO0qajkoPZfkAc/AAS7NQSXZRUAFz4lWjzlNXBTXIH1KuTqY1sBxeYgh
	GG5OfMDSPAd30qFt4Bl3Pzq5FsXz7bUK6CUwq0nc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646868384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JnFNZKItsrzN0CtL78EUkQcj+qGOOIqxjbOII43Cm5A=;
	b=cbYi9aWx2fLaVHplGuM3FrO4LHSY1iEOJN1f0iZPqfu7yQ1LH00GBQ6jFPeX35zF
	mcx30IW9wxOAoyywuElbZXQSpkrlhzYX8/6jwVqSJZS4SmaywyL/0+HTqtmRhBf59zy
	+HZeJ56rRs//W3cigebvJ/0bZq+lmjXc5rBz1MTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71014c10-77ef9cdd-f8fe-49c8-8fa3-3327a8dc051c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae9644809de8a069697a61a8dd898449044bea91feeeb74b71958799a746175a
Date: Wed, 9 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646868384
