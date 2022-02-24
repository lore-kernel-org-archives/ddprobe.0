Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654C81360
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645727784;
	h=To:Subject:From:Message-Id:Date;
	bh=dSz/Xr+axFCmGz7jCshy+/wknV9iUy+DPUJjLw6G5j0=;
	b=mCTm0HY6l7NzLuKlysokvATGoekrkHVEMw4y/S9QgSuc4Nx7XcBUxkbi4GHqk7k8
	zm6e2sqyXvg/Wr58nTHLcY4FtW0l8OVuqTYtRPVsc73Kb/r2QdvA1txa7pnn3BSwBj6
	DOdfTC0mbA5MNLA2LxJIAq0V6mo/jX2fxkrCrDhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645727784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dSz/Xr+axFCmGz7jCshy+/wknV9iUy+DPUJjLw6G5j0=;
	b=kptpLn4+O5CpRZPjETWlHFlijXlQWj9JEJQeTzZhpbY7AoPEfjHd8BqYQvXKZI/6
	xlZFAJ3ccIIT76t+0adinUBFxM0yVn6A3MmFP8lD5y8lBSCsR8da6hUJd/RzpDtAKRn
	nW9gLfH+8jKUlwfOqEkuaTeD0Y+CFh/gOIzgyqpc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d051f46-4aa580a2-f40f-408c-bec9-14dcd9b97d1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0707fa09bafe56098f2dc9baf9cc813b010a6741070d9aaed63fbf8596cfacd
Date: Thu, 24 Feb 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645727784
