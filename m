Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D371C69D
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745992795; cv=none; b=TmP3sQRZOZED4dqK35KEf1Tcb0EontuEC00OgUUbOtZYTrkRIv0Y/42Lr+r3Cm/SsI3VtHwEya1LB3KtGtoL1t+1OegxS9+0XI/c3Z5ehszJ9rZA1wV2UmgSA46uDn9TtKqWpmtnQjfXgKc1b+0ExwF/gTp2pE94QR2cG+UOW1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745992795; c=relaxed/simple;
	bh=G7WJiTIzykraelIeB3kv5APHixWYmvhwCU6CEkFIk6g=;
	h=To:Subject:From:Message-Id:Date; b=aAvBL58m8uwaEfM4/KO4ADWQx97dhUuY5wuVDzR3VOHVxsJshaQnldciHZyA0C+oQq8Sfg5OzdtYDW0QHDBTLV8ehhXk75Ji1CG4ZY/fkNtSPM8JcNqX+DDB3VjDW0sMtZLI3hWVJEcs8vBqtbtyiHCeEOZQ4nrHWwqJ1xt1wuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGO6dbBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGO6dbBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C45C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745992793;
	bh=G7WJiTIzykraelIeB3kv5APHixWYmvhwCU6CEkFIk6g=;
	h=To:Subject:From:Date:From;
	b=GGO6dbBRliliudZflU/N5lNBs0W1/1/beHPME+dK4iQIu/+zzuEDM1/J09r9atmwV
	 /5gRLnedmHvrYsI8bHKuTB7SIrV3oIaS4e72yu3E8iqz9Fx3yfIiUxyEzNBqiscUOc
	 UC+xavi+klS/54zYP2pquJYrMH0t7ee2jGPOk8ywge+ZHDn0BAeXvcSlhJpe0DmFZW
	 3HZ850PBp9R9EQ1J3gE7BqHUv2R37uKpMUau722xIGg/KIhmqwcTrQ5QThZV+NC1Ka
	 2rQUzQDkunymyxVD/qaXnjo2VPqdLfawoOUhEPnLqYn/VLmGTtP+MzoRRvv7MlwLC7
	 XdmgfSt9aHk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A07C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599279357.22165.6665718611992892758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2fa5ea1ffc6c475dd7cb960957a035e7ad16bb59eaf981b7cca666210d7897
Date: Wed, 30 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745992793
