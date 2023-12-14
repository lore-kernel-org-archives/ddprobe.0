Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A07859E47
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nscvwGh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8724CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702564696;
	bh=+fp7UWlI0KB9PPmDx/NcgN/ePHGk3i83bbeLf2b71ys=;
	h=To:Subject:From:Date:From;
	b=nscvwGh8QS36H9a9/amwlk8vzY/cUWo7Zal7cRutjrEK9E3VPhOjNuCd9gUJ8K99T
	 a54cZLaN7CaQQQUIGpufLVkuk1ufZSUIlvxw9zoCK9rRwHtejATofe2CBJtAb7zpqp
	 OzZpYqsEeMEp957/4s4BCdFwLtfTjhwoHRkBFXu577rMPkHFxwBPTM/dmiWveJ+V4E
	 oSAHu/KyAxAB/1SupgKNqLZ5ajB8ZWQs/NL+r99mfNYoh9KJkEt18+6O64KszZEhGh
	 ua3y2JSmOgAx6vF6T/V8vpSua8AM2tRVUQiY05GtkvbKJHZv4KDz89E3eAcPJPxaP3
	 zqR6M3e7QRSqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCE0C4167D
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170256469640.11846.7994937740448842660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aec3bfc517e34444f0a03173991d096d015519e97fd23a3d90da44b747b39c1
Date: Thu, 14 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702564696
