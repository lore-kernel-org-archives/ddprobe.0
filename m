Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA3A8BEC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763511114; cv=none; b=MnOD7PAOOHBO/4XflbuIdEmS/+WTsHrRsLc17HxB9Hca8TrqKN5zg9FDUlOLgU7QBRHOoq5RyLzIPPIzP4UZyiAqeXMWPMz+5W261b277Q/PBKZfOo55RGlowxm971V2vrowxo/+5a6jxuApQOMSCHspnGRnfYR1v7M1DEZlo3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763511114; c=relaxed/simple;
	bh=aKT9n4o4CUttYmjJ6HvBH80PpXBxrFTQA2eV/KOcdTg=;
	h=To:Subject:From:Message-Id:Date; b=Stj/fckOtiFWCCBrLT+bLeDmyyTHVIDnzJaUqcg1MR+y/dXK5uu2ZgOrtPHYJtcOH3W8VH4I6uwPvJ4JdZcEfHBLA7qYqkI3VeqUpWynriF/GIq9xOTv3zIdHLzNbXTpBJhiLBa7UlJnJa/vmiMHc7QDUR6YUq6ihqv5hqNbd3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpaaroeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpaaroeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F6FC2BCB2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763511113;
	bh=aKT9n4o4CUttYmjJ6HvBH80PpXBxrFTQA2eV/KOcdTg=;
	h=To:Subject:From:Date:From;
	b=YpaaroeMWZiJBV6VzWU1HSuI2A95C6Hmi6dqtFYxN/VzaDJfHvyOD7NxiJICzxZt/
	 SZan6nvBtF7OkT/BszONGYuYpfCZJyAepXdAm95sxqieaAAnYA5gI03BVJ0E/NsPiW
	 JKXgMIZ3a4G6blArQwFhZATVxSOTqRPkBPC66H4ZtfRs+T1fRRztivJdQu4PDeawOl
	 9rA00dAqFDT4GxxdWqE1lL8vnGtr2cnXqpQMv8S7CIUvLb2uKVO5xZCv3Oz9hiO2d3
	 KaaH3mY8XSqRtSBlWNVENItY3XeVDDGW4bCg740yMdJeJyAohOkxIYHhE0hDp1cbYw
	 rrzQ4Z7MryU4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD5CF2563
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351111358.13578.12655213028965697825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f884716659af4f90c205257f25adb0410c571756b40080a94724d4c01f73351
Date: Wed, 19 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763511113
