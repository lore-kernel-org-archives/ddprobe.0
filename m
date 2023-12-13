Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BA08534B
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jylj5mO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AFBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702489096;
	bh=d9TLrtq/Rn0fGevxJmx5uiZkWyookkEYA1WnGGQ5ECk=;
	h=To:Subject:From:Date:From;
	b=Jylj5mO+yCGYVO62tUMt8ygxAAt+ziACAsOJTvNdQNLz9BQjRY3hpNVCMDWzV5Z38
	 u1zp8/8I1zgTe23oqNDxDpLCs9fvHd7ceq0EmiLrjtinE1bzCXM5uXVJUyulkhDqVi
	 Aag3JaiD6O3FbS3bZ07aq7AsS5hyanybWECAvpRjjWk9Esknr/7l5BMKKwPR99dhc3
	 YsLlnlRfFKwwgdS14/Km9OVcPt3pcINxB5wLvWUiFNqcFiUmO/kM5lXQArFwE2OhT+
	 FeHH1bKrnwuFFcogB/BGyas7szhTqBLcgZ+1KizU3YYsjXE9Pk90wXudSZLXX5duTu
	 XdnYs8KzXolQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB7BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170248909636.13716.7697404294109217917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a7f3848fed65dac7415cb19720417ab1fb5386eadae7f4f841c2640e19ea8b
Date: Wed, 13 Dec 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702489096
