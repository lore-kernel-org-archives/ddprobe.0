Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EF02564
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646201184;
	h=To:Subject:From:Message-Id:Date;
	bh=ZpJvrtjlmUuAUNXagtn2k/4++em5ArWBE/dxV2SvYJI=;
	b=GCdDkZxyhDo3bPveDCtc9Z/tZ9FOAZ81Q+9cer3SSfFz3b1AqbSuSi3i18icIxnq
	ZSyTkCMgqBogWJDstRjoTBNdKJCVm1Qi/fgBla2M1WDaMSAuYqMZRZh2MUtjtChDpWE
	VrzIdyjtTzFKW+iJm1ow9JzuUY/OZHAc6bDLr6cI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646201184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZpJvrtjlmUuAUNXagtn2k/4++em5ArWBE/dxV2SvYJI=;
	b=iwBJHjSNAvZCaZOD5/3+GDbXjhUBM1pAlxPrlhokipKTzk2cZi+YmHFgCa4cKHZn
	xaKCBC/5wmihjO17dVNoLxhZ/48ZsFl3eeT4Ja2rzqI26ptlfdfaS/MxfWHj7KAei/F
	jWqGQ6URea47WXdc5JkYh3WgHcB4LRSDQABEM18s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f493ca20a-9c451a5d-3fc4-45f6-b8db-2a7e671829a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 243cba4f3c586d96b630fd6d4b0bff16425b67d0d668acb4c3618fe008a2a901
Date: Wed, 2 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646201184
