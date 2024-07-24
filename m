Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C8D18040
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721858154; cv=none; b=pqGBgaQkAA4MreqWu+nC/rkVP+StdAMaF9dFwlOPROv6Jjuq2f2L6xj2+fBgjB8/V3Ih6d5UrLebDvCq4MthiWaxbsjeLwKja98K7nVw7V5lzM86O1UWkWa7ohrV7Uv2OgGPvnoPTmz/AjuJ1iPInSJzPzLFD52OLgNoNkShinU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721858154; c=relaxed/simple;
	bh=FqpdEt1WRbJmRTvPpFQH/3LyEV2B3/Oj4qGK8WxhcLM=;
	h=To:Subject:From:Message-Id:Date; b=Hb5vLDuRliuVqjBC7Xux3e5WSjnQo+zI1Zc3Yc1ITa+Nmz1xUz4sRO1OChAjHlLgrvQ/Tr8LyD19gcJtvuGUp+aFzJUhaGUZ7vlJB6b11NINYgLO6DnZtoGdqNGBIb2sHkTznZRzF18KYzS8tupd2Ozhe8y0ynJAfDtouI+NsAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GubHjwNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GubHjwNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED62C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721858153;
	bh=FqpdEt1WRbJmRTvPpFQH/3LyEV2B3/Oj4qGK8WxhcLM=;
	h=To:Subject:From:Date:From;
	b=GubHjwNypcNe+ZGHiAyUvpWzd9BaLD5b5ebrPW/cuE7RtM8Rif8UV9JoF2e2o1oXu
	 DlqJTocyUwzP7fKfqH2YJH1pqeqfZLRV4DC2fnR+pSz2BMZAcQqfR3Jwr8yBLhfpZw
	 14Ri7+zy0jr9AXT5ZrER4FNaodTQig7KMNtkHNXv2vaIO9gVM34AxN8VNWl3kfGTLU
	 DHuK4L0DEdsDzGOHAHeAnMBOn3j04zdhkyZ04KJfI/MwQF+rQNHvpFe5LyTvvYxFRx
	 C29bJawr38SuvZKIC0DY4jCv9/qlerbHuDh4GESFFk9MKla8YWpB0x6s0ZXUYBj9SB
	 i1bbtUJQYsZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1874C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185815362.13769.3778929307162282965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb80d7397ab34cb1d16be5e236117d7198df6eaa44143182a6729653f35b05d
Date: Wed, 24 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721858153
