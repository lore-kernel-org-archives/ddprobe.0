Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635A933CA
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646260284;
	h=To:Subject:From:Message-Id:Date;
	bh=FLe6YFvCNbT48e14QeaSd1Vbv40z/yYlwFGxeoHRO30=;
	b=flthSmZaXUEW15IEsm/MTx4R4uUqk8aqte1FajaHMMtSAuRdbVLAEBEaE9TnmnfF
	Xt+zoB9AoROzSt4kmlxx3FKNi2kDpaYlG9KF+R+04k5wzpwFh/vR5be2QnsGYKQfoqA
	gyiEQW9wVK2hft2Y2AOzKAclEouHBi8o7F4Mqs14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646260284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FLe6YFvCNbT48e14QeaSd1Vbv40z/yYlwFGxeoHRO30=;
	b=YG5z8WI8v5zK1SrczPkSpXE7wg05JVLtdBajskzsVuOtwkhTIgr1EjC780csPj7q
	BcVICD7z2RHE1zOks5tGXOxc4AEzWbbYB2g+sSILYUxBGreSQKM+n/7GwrqFuI6k61T
	+mxGJNSwQCeCaWjwB28DJDo8Q80dRGwPrqDBZGmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4cc26d5c-e8371f8c-cb46-47fe-b29e-dbc143c7d4a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3ecb4d7e7cddd7308c51b084017e5f9d2cf323b577357dc1b958e2547cd2846
Date: Wed, 2 Mar 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646260284
