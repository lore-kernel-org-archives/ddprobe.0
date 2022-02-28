Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E0448D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646015784;
	h=To:Subject:From:Message-Id:Date;
	bh=i/GfQsXR2SkccmdZOXD4o47UuFtScUHoKAF2b+uYslo=;
	b=Uo1evlhMtna1/3alxa/F6zKvebMlW2rHQ5gD1Ry9cEBQcJn9J4KnemZJmrQ6GrEz
	YlQAZI1dPFtcV1Oxxy8YC+woj8fIfmOHxet7gQY+gJ+onxDKIJjmmHaj5b16V7pwxRr
	jchYMss5BJEp671oL9MPhS09vi2nogSqSjp5H9a8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646015784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i/GfQsXR2SkccmdZOXD4o47UuFtScUHoKAF2b+uYslo=;
	b=JeyIDgik9F8z2dyFymn07Z1mUmM5eZ7WnRKndTN/OYIKfcsXyCtmlEyH0HVdYATT
	PfHNEuGDp67/UV5TFxedrW7PwbP/lD2Vm1kq2qKcBFlntXS7rWbs2cARpQ63yXOZz3x
	WXYqwGbZOSEU01ZRfJtQ20IFogvOuC9K7qaSSoFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e2fa70f-07a07540-6c38-4fc9-b76a-bc71349868f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9e14a4db2861185c542b81feb8ae19359a2ed24eb1b8c0329bc204d2728de6e
Date: Mon, 28 Feb 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646015784
