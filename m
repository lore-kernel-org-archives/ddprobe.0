Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135EB2D3231
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767822834; cv=none; b=Qb8eJzW0d+2p6u9tCXqghP1ODRgnj8P9qlAu/SBOtO9ryyOe1vBJgyiD109PEWbjK0FOysM4pkOn+DJ+uEi4o4ivrObShDYF12bg8QZgiqTXK1H7kLnXgA2Ubl/U9cbkixZHj7Zf0l+XWh+oYiJ6vnDu3JMkJavp8RJRFHpceBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767822834; c=relaxed/simple;
	bh=I4bsTBOCAv4ZEtvDQWbj2Y1n6eOT8mFXWXs7J3RBndg=;
	h=To:Subject:From:Message-Id:Date; b=XC7hsc/ZXGS3Q4JrWQ0HdYN3Hm/g4PEzB3NYRdwfhhsfBAtit5h6I5wsewGPzWXFchTBRe+mOKUfcWbaeWygc7r1z3dA3gFgHbroz2G1K96kiWUThXicAYKd+MFKVlAF1iWqt+trj9kkWOc94LqxjmGgT2Mxe5Aso8v2soW0pyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oucHw3FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oucHw3FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC9AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767822833;
	bh=I4bsTBOCAv4ZEtvDQWbj2Y1n6eOT8mFXWXs7J3RBndg=;
	h=To:Subject:From:Date:From;
	b=oucHw3FYUBPOa5rToGeo4RX100IbWvNxRl5SGfel16Qdpp+YKZNxh+UyFDVA/Rno+
	 X3kdpMfNMXqY2lXsQRYvcVYG8kjgKdwTbvtCG42Cb0RyJWvUrAD9sKNA5S6KRdlKHP
	 CjkNnlZmYGWQg/PF22+Z3TsGxVQ6N0QrAS89aq0qjMzvUpDrG2d6VxDapVgMMWqSl6
	 ypga3lkPWDZVmltOHAM+KnibnrVNZsg0yO8FEHCXHcsqcpVL3btVC1+WxkXJoMXQOY
	 PEtE3DTYLRx3XKsajl9Age4VrvWCqvJ1xcMT3h8lSgUXwWRZA7Z6XAvIKTjYqd8Wv7
	 q447xECgPL8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F782D0D171
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782283358.26066.3554918486119134697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582bf6562332e0a2aae9ad3c992ed07c18921db175edd37177a930a02cf1439e
Date: Wed, 07 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767822833
