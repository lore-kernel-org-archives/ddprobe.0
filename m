Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B8917CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647678985;
	h=To:Subject:From:Message-Id:Date;
	bh=W4kZUR0DiLA7Kur2aZz6PKSlT/Kk/k4moXqnufEgpcU=;
	b=SmfbHo+kA/4vcB8m7puHQgWAUvZQzMxzHNi87Kj1hll1BAbdWfuVc2dCemd9lzUp
	zLM5512RhGx6TMBolfvOT3lH2O5aLJI8KyHUGBMiCeAG1rHOjUkY63QMPvkL8W9S7VB
	xhndXblpbcQaMYZNt/G1IgBsl41cWmqzMAhRdX0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647678985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W4kZUR0DiLA7Kur2aZz6PKSlT/Kk/k4moXqnufEgpcU=;
	b=c71HiXuz4RHMKx38e3WLcAZq+H8DuprAthHE8RaHHdWJzUpDc1pe4IdCWfVkfV0Y
	0em4x0IwgU1MM/p93PqHldaK48kZrio/Og8tX50Rh0G3PK3/yxZh9ntDObXp+OPVIEU
	KAW9BMrWRGQYsictqxHMf+geVopem0WIBopHK+9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1521243-95ddeb5b-b62e-4234-b23c-fa2b0c3012ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fa6f2bbb54952fad14647c47a6fa61f44b877b5550e26193dea227845a3d3da
Date: Sat, 19 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647678984
