Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8457B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 11:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652181239;
	h=To:Subject:From:Message-Id:Date;
	bh=SFBy1pGsSo4yoUGXsRjLnR88fTzJJzXFjzQpZEehyFw=;
	b=FfNmiG+gaorO0VCq93BXvGt8JGlnx7dxSs/uvsOnVunlt7JhOoGl430syXlhHQiq
	F2IYPlD5xUPZPn/4xDsipg0QI0r9ayJWECIOSKiWe7vzAF3CLiwtOrqt7M8TCSLp7G7
	HZFw8yGAOJGcSL2tsz1FfmZIy9CNCHsW9Bvi1eX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652181239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SFBy1pGsSo4yoUGXsRjLnR88fTzJJzXFjzQpZEehyFw=;
	b=HmV4H86Ske9okUbNSJf6YRgFXcG3Lchk1ysXxeYYvQ8STepEazTp4n/QP+SftpmH
	juKSU0dHfltYUtLHbIfHtzBgW9Ba1GkONVc83St0WYEGy4A46xzohZBWvpWbTqxahqN
	8YmmabqXt+8vM0fDQ1BqIZ1E54ZBnEQW9LvRdw3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180adad05e1-0670bb8d-c3f5-42a2-8ec8-3d3c6db27f59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5bc78fabbf908673d4fc502d052a62a01c2c864fbcb314db588ce8da9dd1b29
Date: Tue, 10 May 2022 11:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652181239
