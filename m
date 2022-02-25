Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEA210EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645760784;
	h=To:Subject:From:Message-Id:Date;
	bh=XynA+pjm+Qd9sHlLOtefURsORSENW77quh3o7KOvDtQ=;
	b=dmWdhsSOrTHK72f1Ky9bQKpjsiGJXd67zb1myO/MPux+Pqo8V8aYbcLXCdfxqCJ8
	uwVNTOc2W/kWeEREMRzqNIqb1pM2w4lCHfEnuhWX7ZM1Je8ekFZzoiGstDajzUs8FGC
	wfq9WanC/xjYTlav7MAgEijwpCCAfBx0tynucz9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645760784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XynA+pjm+Qd9sHlLOtefURsORSENW77quh3o7KOvDtQ=;
	b=UU5zd185nFZeGRSt6AgHzSo8rAZak0yHN3r8Oa/C2CjgGfARDKWBryD2WwWXZJg+
	0Vr6Fjr2QFrTsrypBL8Y/BjggpulBnaINOYg/r8GKtTXqjfxzIX/qxS8yPKvu0bTv16
	3aZqv0hUD4cP2w27sWAlt+IeoqbJdHtwi/v5PVVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2efca937-50ab6ba1-6c60-409f-8c04-564625eddac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ff084583ca9fbe0ea78187423a74f2cb2bb24c8ac1db10cac67a2cb13f4bb2c
Date: Fri, 25 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645760784
