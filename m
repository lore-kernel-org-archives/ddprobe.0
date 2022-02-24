Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677DE7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645660884;
	h=To:Subject:From:Message-Id:Date;
	bh=cDjJht225QogzEWG3ULe2JzvJ6yfVcwD2vaE7pYCo0E=;
	b=S8BRazWkMqQ19uFDDPfJa8gtKMOmvzhXsqclwnXhNb9U6nyzRFBYrckHsnVm63U4
	ktLnzUsfMWN23hcBvRTmB7NNtRXSws3aU/MWfvWVgTvSKchXDtBVUQx67lURsUfZ3mS
	pwZsJKvO2elUIeOxMOpSKhaFKRBPn8znRRj2Yn1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645660884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cDjJht225QogzEWG3ULe2JzvJ6yfVcwD2vaE7pYCo0E=;
	b=ap1aM0XknuOm9g3LYb8JJ47FoAfXxrEekIHLBLr4K+/g7mhaTHN3Ggc3d1UceW35
	gagEBySloHtMIisJ0D5HJM1RIWni6AVnFD+QS+BTOB/6GkjlM5TGN12FiYS2HkLa6vP
	tONDnwmJo8xG5L6VdwklXUxFXVC46R/qe6A22NtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29084f6b-082570c3-6203-4ab2-a167-7bdb4c88b41a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a02b089f0f93aa716c6dc5afa02375dc93acaf0e2e32e2545c1fae9bfd84fc9
Date: Thu, 24 Feb 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645660884
