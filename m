Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959F9C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646410885;
	h=To:Subject:From:Message-Id:Date;
	bh=E8Hynwx3hBGf5ZQ5qqVucAEd2MG0rr9IdCoX4R5uO7Q=;
	b=Mr/AWJPGXh87HC+GH9phd4wtgDDg9VoadONIqPSGQywmEggJlz77z3whKOvlq9jV
	41chpRvk0wp38rKmK58hYfha+lHzY97Pm3E3tRt91j5vqgSVSkJHa+WkveBruvamFhM
	M14fQxbtFOQmcnsT8FNMu3aqQhKlSi3UXLk8UX1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646410885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E8Hynwx3hBGf5ZQ5qqVucAEd2MG0rr9IdCoX4R5uO7Q=;
	b=GVCSVUmM69xKcOgPsCDL2GlCUXAS8kLG2R8aNejuaU8IDfGde30oP4t/GMe3i0hh
	RwF97ifI+qgfqU/JJZr0t/MXhMGMZgy33Liqhn+e/4163D/DzWdnrYvey91/zJy7HVx
	6M0Li8KjXj8lZeyhacV2qeuwVseXRypW6DbLPi1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55bc667f-a239306e-ffdf-4c96-ab66-a567e2a518f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 196479d60f311327ec8222766be030a4f222b0d7f16ca8c444dfcf9c9c325999
Date: Fri, 4 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646410884
