Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD74E7C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 05:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655272199;
	h=To:Subject:From:Message-Id:Date;
	bh=r2bMZO15+sLNIGEe829+alLwmi5xC0V3IFwXAio5R00=;
	b=IoMTjEziw25f0i+hxehAv5ZPCPvLmfUzIE0z8B1N3SlvVFJF11R0xeI+Ol06k0td
	26uYC90JvdjLZ4d7a2tI9EUBHaniVzhenRSJLMDK8cYsUHHvUvvSXvh/d0mSSw06tqj
	EIiWfRcESOiu4clEPgZxrz6FnEvgQkFQGd1bQsqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655272199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r2bMZO15+sLNIGEe829+alLwmi5xC0V3IFwXAio5R00=;
	b=Z/RxDjP1NXNLdy3x0IrM9NnJCExN/OvcicMZI+yTg+4heYhkjfCUA8rkaMWf2Rj7
	JQ0v+IGU+llELXQeSiDN63eqRbDRZkEmZMdXYxzHyQCknrASJ9ImMbzmDGcWOGWJ8jP
	ab2mJbSQFeEBmuGte4riqpcDnSBV8j0YkDxF9FTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018165e95442-841ae8de-7ff8-4db0-950d-a9fab488ffcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f928faa471f9b277efacb19daa3e7a7d3b1fabeaf4343f706b53d658f7252f4
Date: Wed, 15 Jun 2022 05:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655272199
