Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F84713BC30
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718745563; cv=none; b=a8XKHKIGn+BHFFlQaINMERKBrwsGqsC0Wg5xKAe0/Mmo9fQ4LKcIRwqodJvQwOGUcFlsrjZkGyODBa5ahaRX7qAW09u1w9E/vKxal28dxhUnQWBzXTGS+RdR8KRzec5obozzfmNucgwWKFicCyGX5Wuq0uJV+SiOvMiPqtBTBlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718745563; c=relaxed/simple;
	bh=qbqIcIOQknsEeTfG1iDBPOrbzlVbtGUxdejI3eBJ7GI=;
	h=To:Subject:From:Message-Id:Date; b=j4MwnhTlDuDcREUU3ZhP3KhpQQvdwp0kwmXa5P2rktMGr7a/l5DMo3o6ILm/WYevPM1+gnNqbSva5GMWHkJ6kG4KAr22ykZJGJIRXQc5595wMHyGQDHs3uSl6azI8ALv7cLV1yW9QUSdsbR+wTHMYBKzl/I/ETJey+YsnYEDQfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/+4VZx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/+4VZx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E046BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718745562;
	bh=qbqIcIOQknsEeTfG1iDBPOrbzlVbtGUxdejI3eBJ7GI=;
	h=To:Subject:From:Date:From;
	b=p/+4VZx/X+uiGOdZnCxwSOGsAXsbD3fxY8X8xE5qZZmdUtQkFzP+Y3i6C4yScXh5X
	 y5mhlJ3Ekp4TvLdZZWvl1lU6rC7ajSckyQq6oR8RIOrIC3cXqhkzdQ1Q81nqiBat5u
	 HnuU3wcT5r2A5+kwlzHY07q2PWduh+O/jPFxcDqLA35S7Aa0wlRtVRqYwUCGj/PqkR
	 nEgYNnssJTXB6d+OQ7heV+SjUHYWz2lNkIHmLdtnPly/7AnNmUteXZMezJROe3NalD
	 LVgAAzQTLbT5WjXEuZ6CsWndQcppxQ6bdXwx3nWehAO5cThF1ypM99T/BiwYoZISqD
	 I6HSkgMCxsTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2F8C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874556279.17368.13192164452710784256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5cfd13a382ea694b26854493975108991464f6583364ad899073c34d7d6d46
Date: Tue, 18 Jun 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718745562
