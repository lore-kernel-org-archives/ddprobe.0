Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9008C1E
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745771994; cv=none; b=LLFD5OqbcmgKsPef+kL5LhZskGOe/jUuDxYC4Zt6FX4vEWkK2J/C5Uu9/WGvRiMt1Bf9s/a+h1jh63MwzFOxJR+wAobW5xKDe1XhB8q9jOuBh5jBaLR5HbiEb/hB89T61lK/SfyvsuvS+JjukRKiyg/1Vuam2iqXwdTWZHaeuGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745771994; c=relaxed/simple;
	bh=PMjNh1B3QBZGdUdZsUf00m0teyp1pjzdj0PAEEQKF54=;
	h=To:Subject:From:Message-Id:Date; b=dIQ/EiFvNKz5vCGFQZ+fKNsdgcnSa4QUKUY9I0VduJ7XNAtZHKdbIbHhH8f9j4Zf+MqOix5qGmCcf1Lm06htlS+r5IpVWCylu4hpAKKaGgc0UFlaNcscgtOEUWoO2m3vx4tE+37fxmtUREMx15qdwmXZvhdcJmNjcY2ox5loma0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzhuNItT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzhuNItT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D20EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745771993;
	bh=PMjNh1B3QBZGdUdZsUf00m0teyp1pjzdj0PAEEQKF54=;
	h=To:Subject:From:Date:From;
	b=TzhuNItTF2IWlD43sUokegAMzpNXlbztY3FyNxC/Jj/zwR/WhnojsWTdKILXfNFvj
	 wpohBJm0e3AiemGbF3SytOD5fmFLaIYu1dcQ2rGCXKfpr3GLk7lUOuRZ86la7bKm1x
	 VhJVIfSGm+LVnh6OYylePGzKL59QhzCtOf8VT//n6i8XDvyAJROEVumCaA8epE1xCu
	 UA8xfrV4mW8reWBa9w2b4JOt3TcqzPd2+10JatAuoUv/pnsGg5wRj2amNAbY4pn89z
	 OE35UJ0/RWy55klHZWQWw5tdm2X3wTO1TrOxBBeRCk3754j2BC+BaD+egfnJHLHGMC
	 jVdfKRmr3U+dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F028C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577199357.2406.16940473756204591760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae544991a2ebcc3502c15d7cf11d2ef731082c09aa14923f970668069bea63ba
Date: Sun, 27 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745771993
