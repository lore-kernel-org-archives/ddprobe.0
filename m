Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CC37C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 19:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648929538;
	h=To:Subject:From:Message-Id:Date;
	bh=RHQ9/kf78+SlCBb3bv5sLWQBoOubwhhOQ3AsE/tKass=;
	b=WZIjzjnHtWtzdYu0KlYJ3NPEE5mgRDG1pK8He22F6Yhd18Q9pkejSECKVQnlVIGJ
	F77o2iHRK3U89Naa4WgjVaBzWpYdpH3EGwbUTUbVMx6siHxiCpAAa5/4nScQqCNZ5oP
	7+aO8YHEICC7mp04hvbDRoI/LZ67e3EZD0z/iu5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648929538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RHQ9/kf78+SlCBb3bv5sLWQBoOubwhhOQ3AsE/tKass=;
	b=fcMXD+sQAih3A3e/YJaALbX8H39QiBpwo2nWHjCq8g1h4HV4Kt3bnZEHUEJ/DrHJ
	aFpl8QVT8g+3Nor5lGFo5Q0uZ/E58jAN07qtYZ0J7+z3mWwTp+SnOxYNDiQE7/F3SJB
	ja+Uyw2Ismu32G1iAaryE94fq51wUg1xc3y+8wSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017febdc00e6-8cb53b3e-be22-4380-8e9b-6e2de91c24cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccde91609137970d0ef71c217b9aa6ec3738afec8c54fbd276be9cf1d0078d02
Date: Sat, 2 Apr 2022 19:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648929538
