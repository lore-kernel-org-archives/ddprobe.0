Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43651367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656394012;
	h=To:Subject:From:Message-Id:Date;
	bh=GuxKjuATyjC7nivkRfOL0jUGPvqpXvWCeVGUmsI11Z0=;
	b=WILtyvHobHjkRdz3jsVYh6ldROiTPlYBbCtxaYQI73q7629bD5VEw2BQigQrj3IT
	8qT+BVaakI01mq6dDj6MS32OcFXmyQs7I8DfzmuJlWueAkO3Bx5KhwaWm3FGQ3bIt9w
	DqrSQ0OPLpiCFCUz3PapxTLtmQVtD63ofrhpJwK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656394012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GuxKjuATyjC7nivkRfOL0jUGPvqpXvWCeVGUmsI11Z0=;
	b=WOtiFDkRvwi46s7MSgq8W0rcalQVtuqN0xcOBfWPblkv6GylWo/cmemw8yKa8qgK
	beDA2LIPGyqO7q+xzpMtcFn9ikEmGuYDqt4OI4+btyWpP4WR8fNbTVU1E71jbXSJeqT
	5LM9Z4pxVjM6k01FfRi/kzI8G+aC0ddyJlfY0RLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8c6d65a-42dd7de2-d1b5-4ae1-becd-85350b53cefb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c42262284b2497b31c240368adec3f82468eacb57d03bf8f378182dd4da9966
Date: Tue, 28 Jun 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656394012
