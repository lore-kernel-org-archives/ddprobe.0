Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2571CA84
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0EQpNaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4D5C433C9
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699027096;
	bh=FQ+s/p80wnvi3gSI8W0Y4AXbvs+J5euC+1q+Qf5TllA=;
	h=To:Subject:From:Date:From;
	b=V0EQpNaDqGV/F/CrUON6xUoaIu60aUmHtgOGklQ8qOtmydS0DTPKAo5th41Mwr5oe
	 8gDDfFPPBC0MfUs2uLiBcR03PiKGKmvZpQu/zCiZLGYIradkTrR6KwK7vY8zGUB2TS
	 A84rGi93Zt6bH8gthdh/i5z87SytG/2YfyZtQ7C37EJ2gPW7QvDQSwH9ghiJa9jxAr
	 KQSQrP7n85t+KSd87JZ4R3uD9Ottb/OANxzIbpE8gllXg4Yg6n4qEcnfgPSmGwuCwK
	 2+obzOth7Bp6etb6SlkyBB85gv4kgIVbeEqkh55y1zU9KMx1wvj4AVdS9YX4QGB0eO
	 Nm8OuhJgNQ/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ACCC4167D
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169902709639.30240.7666062798971204997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92cf4c4612c8e1b5bf60d4084fb0d3d79edc19bd0aa28821e11ab9ffd407000
Date: Fri, 03 Nov 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699027096
