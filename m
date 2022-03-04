Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B25A22
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646380284;
	h=To:Subject:From:Message-Id:Date;
	bh=pZyCirqO6AKa1fGD1tce93ssEn/ZTxxxzV5EKO/lyqg=;
	b=TBssT8hgHjCO2Eyxda/ou9yEm6UePOgMLGJPGm0QGNcSHiFAOJmgp6bLHRbHv7b5
	YVXMmZ3sIS2FXoDQkMzev8jfeoEEwZFrSgZvMIJkdIZxhCfZUWTCj8x6oyaPrTQMETe
	SDsXJEsrQ88foeEUSZHxcWW2IOP/L94lz7RJr5CM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646380284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pZyCirqO6AKa1fGD1tce93ssEn/ZTxxxzV5EKO/lyqg=;
	b=AEfKWyNv4vw3ByUHUr0MdRlplY3gZwUH5woX9L+jHGlMBfJAswSTvrvGCz+TDGQ9
	AxiND+IrfHR+xkVJtzotuSnPOs0IJ6LuqOLSHrB6R+h1qi6l4BBUf278wrGlJRguxSy
	PDaHrefG7mqIIEpwmqgSJa51mjz8cXYJcrB2T9uA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53e97b40-c16bf3bd-bb84-493c-8382-3d3959ac2a6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55b07ca9d146c1031cdc8f872bfe9eaad727a8a7f64cdfb14014f7e6d8c99b1e
Date: Fri, 4 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646380284
