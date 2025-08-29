Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D5C261585
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756467593; cv=none; b=rXHkJkfIEq9ix3ifnc+/VE9zm3E79fTYxKfdADs0WZabO85C5OLftsZRE713iArMaxmZNTazRMLipOXpuVngbvLJdnUkwEyzOaeJ7RBlWbbWwu39Zn0+IKxr08FQrTgPOd4es9mF5NwuZLT1bIDtFpzItqnTXkmLoXCTVtNfv0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756467593; c=relaxed/simple;
	bh=3z7DRHVJ4hwkvm4UAeXW67120xfk6lpY2vLPp3/5Wd4=;
	h=To:Subject:From:Message-Id:Date; b=tDpLWkVAkunnaAQgbqlnT8iKbryD3wGzTzy1RVZWdPB2z1TxKhC/s1nw4zSV9L4lppssJUOWQ3DTWSao+7SIYo/bQD5UTEoZnqSBlM/mDa0F5S83YQS0VnZCOjht7UbWGImnUIqp0gSIrLgeKVq+b2iYfxHq0R+NH8R2vvrnDH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK/bt/uR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK/bt/uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DE3C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756467593;
	bh=3z7DRHVJ4hwkvm4UAeXW67120xfk6lpY2vLPp3/5Wd4=;
	h=To:Subject:From:Date:From;
	b=uK/bt/uR5ThyTrM0F65u2Y+n7MyOg7GgH9lIuSwCvUd99XPDoa+e1htNtt6ZBCm19
	 Z7xUoE//FmZCpbXpFpzA7onXE8c7DPLIviHoC93XEIPTw5VVBPjfXCpyPBrdVfmWem
	 /g+gQM8xQbPGfbpuNHZzSrh0u9XyMSLnIDMj01SqfPkcxYtykyqw4gakzUuktSKwc8
	 zmr7Uq0K2uHUuSq/8GBUSa8PIbIQexBq1sYLRDvAXIcM4dg3xCrHkZfPTLXV5vO1Ts
	 Ao5lgYJHkn5pprnDD/a81ToUuGw6PmVnZK3yigKwtWUo9QKws6DqaAhb5zuYWOSfyA
	 DJP8QoaZdU75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9514DCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646759357.20660.994900230648021870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9876414bb15dc278acb5045c65244478793a04a227435035a573bc8298fe1fe7
Date: Fri, 29 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756467593
