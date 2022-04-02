Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0009E1856
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 13:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648907158;
	h=To:Subject:From:Message-Id:Date;
	bh=PxuvVwnlOpldgY8sIux9Jl43UewygblO5Uk02XeXXyA=;
	b=QLJzqfrsddtl+n472eZZU27eWAXJoICQjizuVOnBR1GW2yyoxq07borTcMj7oE/I
	G7znDZ90Ry4f0mqF9eYdt7BwThZ7WwxRM0m3phzQuFQxFQ4vtniGGBc9/6LmQcG0vJU
	7bhfEcRwZbblX1azAgiS0QYlaFrfFCkAGMNmFRxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648907158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PxuvVwnlOpldgY8sIux9Jl43UewygblO5Uk02XeXXyA=;
	b=TesWGWwiQP9XCbb6/+qv+cx0e5zr6yZ3cbnwLF8A3UpbOsR2rqp2/oAjQmagC1Rt
	gcr4m4vZJRaYqO/8++9iCkqdGOgtcHOE4+8zKIyDgpe5BrPK1w02O7jg4zlSNqSFEJx
	Xm8HQKiNmIHdSVc27avusjdQea70lcZl/gc1o3NI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fea8682d1-fbcde6db-f79e-4d32-9a2a-82cb8e00f687-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97bac2397dbb7acaf7eb35a678006b2ae216d6f7d7ebb73c1eb08c7728e5e3c2
Date: Sat, 2 Apr 2022 13:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648907158
