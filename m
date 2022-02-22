Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49550634
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645540584;
	h=To:Subject:From:Message-Id:Date;
	bh=U/UZLlnlMWVzpAwSEorvX32hUumDK5imYvSjdutAb84=;
	b=I+1EVY0zhfua/GhvbdJgxA3rVBXtSiHB0pmAeB9UXhDmxr2wB65BzONTJVP9ly85
	rfH6/erXYdAlE2jcYUl50CrA2hnbUTCqXXeM2ejWqhAssiW28MAO3EnBTd4NKfV7IjG
	dCGm0vFN4NJ+vmX6v3turWx/+4nGk2QXrNKnLizk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645540584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/UZLlnlMWVzpAwSEorvX32hUumDK5imYvSjdutAb84=;
	b=MmK63MLDvJSSfenThAOtacPVPhMTHwlpuT87fZ1tuvBGClE65B2o2ml4qOhWogTR
	HnewNTlzeCIux+9c7pmZpgdaTL70HodUj0lLGS+mvH4CRAJa2Frs1bkhBVVtYCHTzh8
	94hRxGlCpwxI3wMO4Ky5+iG1RLcIBSt2U6IUnWYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21dcad59-118c3e83-a0a6-4c7a-b104-c1b54dac392c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c78f5d120981820f8e6a2218ffe77582414386bc896b8606702b4a4c4efde3a
Date: Tue, 22 Feb 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645540584
