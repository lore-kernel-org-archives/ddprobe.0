Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A2F1B4227
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744671594; cv=none; b=AJVwO/j7Q+NHIw6OPBQKsPlfSsOjlEhJ+igF3XOFsTWaWVojO27JEEU/1HQP8TL6N+ndmK/H+SdXwOiVnqqZSUdsJ3Z7I8TNIqZbNtjswFXMOl7EOElJPVAUJWTBoaSH5wbU8U3SBV6UC7oCHpB0ZBK4vs0GDqa2oi4rjI0qxhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744671594; c=relaxed/simple;
	bh=kd0J/ld23AZMddoYVH/RuLRYPtbhWDUehhZltYpo6GM=;
	h=To:Subject:From:Message-Id:Date; b=m2RR+pjjqk0IF9mEOwoce3uInJZ/4ScyVNTQuatTsdyXxER4krmfPUgrnRLurDo71L4YmvFSEfJp4/b+bqUrQGKCCSObC/96UgsqqlzBiB2pwWpKr5wECN+pdllF9qiAsRzL7iHs3YN8g0qmxQq7QPMpbTvPcfs4xAQeSvZcpWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uU5JCN1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uU5JCN1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744671593;
	bh=kd0J/ld23AZMddoYVH/RuLRYPtbhWDUehhZltYpo6GM=;
	h=To:Subject:From:Date:From;
	b=uU5JCN1DYyGRoR1kik4xnmpNa/zHhAE5RMVuGgLKmX6W8/KFyuVXB8hDAeeH2+ZQW
	 kSPJqFn39GuzgB+xuPtF/YX4LnYBI6g/Jc84RG6tzYIhZK6ejkC189HjIlcLg+GM1c
	 KMlygOPSOOiRyzXxIfvv3CAE6n8pyoQfolUFsEr6z/Fk9dSFq3oJ2VtBypR1Xo3bzt
	 Rdd4ViI/ofgo9AxTyB50Ft8Lkicv6tqNVTFJNvwYV9XGKA0rIslKcsci3ehNxptb+0
	 M7LXxF3zBu65tIlRkS1CMQcyOfK7pAhzn2GMoiCZUoKpXUQ6CeSAhiOk9LIqemPlVN
	 7MIHHQHgD7xZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA05C369B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467159358.15572.7797900220035975019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97f8648fe6d61a71acf44da8404f6307f8762d601987999993fd5ff7d138d53
Date: Mon, 14 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744671593
