Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1022586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656322612;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7EHbJdvM7bLb+7Fg2ThwU3xZdIHZs5JSxVBA6AjEDQ=;
	b=L4FxB4aBCzotKuANudFI3nO1V/nOO/rH0Hrjrk7ohFw35U44YeCQ0S/p9eQMvLqa
	+ksPnqSpvMZGQEtTjlpZBebtJHzeG1vI5jxMdNru7+7cr2mgDZUJiD25j/Zgj+0RTrK
	G08I7p0P1zpQI+Z9UIrOFyqzjWZq4P/Qeeaf7dlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656322612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7EHbJdvM7bLb+7Fg2ThwU3xZdIHZs5JSxVBA6AjEDQ=;
	b=BBmI0irMe7M9Hx53K3uFDh34HiFVHBZTCvCQajhKbtdIOlT4IhMWLDTdPyVhdYUD
	zG6KhfExVSzVqXtkSDfjnq2WYp/tUnkgVEcuBZ/uKe99sAtjFf69PHLu5xwq6GYsZ3H
	79xOumOEyu++S8KCAECavju2OaKkdV1oc+usBUcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4855c32-3efe0ad1-15ae-4cea-b565-47a60c1e9516-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d029eda3873b473ee4c5f063768fc01dd3450156fc0d7c2a6bb8edb5435cb04
Date: Mon, 27 Jun 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656322612
