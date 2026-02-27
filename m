Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E555345731
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772212494; cv=none; b=MiU97NlVx7YOXc37MaKEB5g15rwaroB8eTXC/9Kv+tJwHeYIUUXzQ0kpnyk2XttVAlABzs11ZqjXfJx9Bu8mBm2194ktl0dPrBU1J7LbDx3WdGMdBthZiY3Zb1yLG1HL4vB7tFHCBi3fCXjoB0UVU+6AMYOfq0TEl/uxzCUlP8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772212494; c=relaxed/simple;
	bh=ubvUw+5nmsXsQa4M9UQSsE0hbQ9fl4mPhcs11S7LMlQ=;
	h=To:Subject:From:Message-Id:Date; b=QhDshBg9A3Ux9IwWXDpfVMmwQDZbbHsyUIrnYj2wHtyzEPH/iH3RZt+qhsgNx/qQ7nrndF9g9DCk0TA9XyUYAansaljXfZQhbpg9Gpj6FlnIIPSaInXkKAHU3RFu5Dhe/x4dzyQT9i/DXvUxOUB25eYlpapQByo81oLbRZVQ//Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9Skw12J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9Skw12J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772212493;
	bh=ubvUw+5nmsXsQa4M9UQSsE0hbQ9fl4mPhcs11S7LMlQ=;
	h=To:Subject:From:Date:From;
	b=X9Skw12JaUQmhqrCau6jq3w40JF672L1syUxX8paVp8GfvE1VRNbtnAjsVrD/XFkk
	 ACzUYBpvCt7w+ag/2j8qxacUgWTmA5i7RSqJoZKsCG9l/HY0C+PBj8BynbvYI7DMeS
	 KTPjWtY9SjlyqopSO9v1OyvlbTi37aVb6ZVl4Rw9grpgg2WE9EQqBoPoRHq4g4a+BP
	 MwyzaIbWvbLK8ppMsC/pO1SyMmC7K/+ptjrYN4unxwCR7mRiHgVxp1/4epOJQV7Dyr
	 xpKBnxTTQrKHJAoByuOiSY94DvguX3QKB7Ivwb++Pqn1Q16tcVuIBUyjVXNyd1Mxt7
	 0znhK6sQxqtjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F5FEFB6D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221249358.5785.17413185340115557457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb034351b931d4128e102e178bac6f50fb8fde28b7fae691c8710145c7ab54b2
Date: Fri, 27 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772212493
