Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6ED325491
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774518294; cv=none; b=SbShUwpzteac0R/uS19Rm/wczOL39eYzK+b3ooBmjOEyzAONBVfwTKXWCW3CKAnynLvss3zlU+6HcIJU4EyQz4MidiwqZGub5BYpzntNdRoMzCixsTumk6sscW01vohl5limg0Oa/8v4qChdB8ZmzFV3MO4F+vzBFqJnuUIRPVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774518294; c=relaxed/simple;
	bh=MqyeqjQhW5v1WZTTtvNQLWwywfm1Bk2wkd7yxrU5PAE=;
	h=To:Subject:From:Message-Id:Date; b=qD2zVFVQ5rpGwmfFy+uNDuER+QieSz+4CC6u7EC9u8YKbfepCFN/oXMUbGoDyxN1+o5huk+hRiHXDafIERfD1+raD0aGZH+YiTYf7be9COaqfKzkDJaJkLXkUWZxPxoinW3G49NZSrqJnRWnEHev2dO5+TDyAHhuU6sg3M2Msng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd3DU6XX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd3DU6XX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F1EC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774518293;
	bh=MqyeqjQhW5v1WZTTtvNQLWwywfm1Bk2wkd7yxrU5PAE=;
	h=To:Subject:From:Date:From;
	b=Nd3DU6XXNe5bSBXlTHojtaZ2mgbi6D0Z1ei2H9x2WOJ4Y1pQS9NeiOWY9BVQ1oUdv
	 wgHT49wTvmsbgQE+/sB4YKkIaaFr7bigU6T61xeL1w9tN5u9eC1i7Z79OumqAFzk+b
	 U3O9R0nFsNNIWg8ifkKNB/Z7q/+CE2YcKToFGihJgEGrYbTl6PxEpMzdfwZKRWiC83
	 oMwlHHcoRY1QFjN4mBU9no3qR0JQ6zm6ubIArJzsYw50duL5tVZKdfN2Bpqm+GrG9x
	 yDGjuPkAT4HOGsWggyPpeu7GuQXOpvei39DYjRdFIy01iXg1GBAwJ/85AmIf//BJiT
	 wVBtdJ4JWo5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190E106F314
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451829358.30108.18406659150227966579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca00f979f91010bd396aac9ed95ffd78da5e70c30b54ce3bdb8f5b9d3ee25c01
Date: Thu, 26 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774518293
