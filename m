Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543B31DE3AC
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744083594; cv=none; b=TQ54eYBfrpUEOlvjnHllY1QImwGrdF0j9Emd0B8KOO9hMN3pt2pqvTaNJoGneg4gkrnTshkit99avEF4PBlkryIr692m1OlqFigPvqR4ranDYZ/p7Ski94AulFAkIxJs5hke86SIvO9PxFta3HL9Fk8bHnmzGSU/FwH/+8T5auw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744083594; c=relaxed/simple;
	bh=YXmU4DKIckYxEQy7s0qfGNzp2dI6rUHdJ39+BZNt0Ek=;
	h=To:Subject:From:Message-Id:Date; b=bubAu/M8YIQdQ1JuNBaWkIDK6db2rMxj/1Gna7Z005yL7d4kZN7o+UEIv3OFRKUtir9A9vvaGx/MXzLNDADFx79zBIZWklD9IcufI+EWmODL0G1/jrrN2AFTNVW8I7KPeNMMmCQw4uqHT7je8cRhRVT6sfLgTeGsVbCXFMAbSjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1ltVWbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1ltVWbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5423C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744083593;
	bh=YXmU4DKIckYxEQy7s0qfGNzp2dI6rUHdJ39+BZNt0Ek=;
	h=To:Subject:From:Date:From;
	b=a1ltVWbUTSCnzxcLNYwhjR88hDrdFTqo4HvL9t1CLy+2KleXmgw2ujI8KCkWphum8
	 k2KEo7H7Q/PD5OFo9aQZDu5v2bEMULau4qOQO0Z11CdizpqKeiEDm7+VVaFFSjKz33
	 YJcAZq0Htnroc+wZct7/oz26WKpC9iBmK82Wa9PSTQArwiK66+wErhJZsieXPBU8xI
	 qov6EZrj/KfFzbQDJvFKyXaBjQIgLFtdv6ohyWyqLq5fNPjaj/nQLF7HyMhnuNqy2t
	 vHREXRtDtPxy+Spi+n9scNDrWfqwhavZTMRaOIOEx7X6bV9kR7kFZyiDaBg8vocVJ9
	 GSlqIUIrWycUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD22C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408359362.13619.2138743813024621572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cde2383e1f47bc3b62661b82af2c59de17c8d212859e203d4c7ba9630658e42
Date: Tue, 08 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744083593
