Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56773F4FF
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E85g26nW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9807C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696588028;
	bh=TkClIawDG+sFSonKs0srWJnkvf86xmvOUlD24q1FNuA=;
	h=To:Subject:From:Date:From;
	b=E85g26nWjEilP2shxA7PEfqAwVj9Gzo4JOMKWqjDOwNZtH2QiZ1fi5i9hO9mIMNcc
	 vc4MaJJCid5yCH63nL6GtPUJnmNT210BDlaKA6tI5HZAtZihyziDBXJwKbdHTIaUYf
	 rLXpavMBoXQ5iiX7L1rXcZqzf0F6s1hzrwkagSnfV7I+/IJRShmInY5jrWU70X7uXF
	 C1BTzVi8+Rq4D/rk/imusbRcGEsZJ8+/tK6eufSbpKwVHCH8DkOyPrKVKgXvorQ8v6
	 GG02p+N0poCxTADTcRRoNaix/LyvqrN0cuz0bE+k8TXM1IFOEooqCwsUGEd+iAPnwf
	 syw2i7Tj9FUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C013CE92FDE
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658802877.30887.2936086010283971837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bca5f115b794545892e34a26ff9de00e42ace0194b5156327b1aab735bbd87
Date: Fri, 06 Oct 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696588028
