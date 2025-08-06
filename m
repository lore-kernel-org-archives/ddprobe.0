Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096EB7261C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754480394; cv=none; b=ZP5uEtHcKF8eQEpgTBhuWSwq3pAolkSo06bEcx4/nU0ug7qcE10YP3xxOEizWTAXQ8WjYmB3lbUEULCp7YLLV/7rd/3e5/ISrFjMchEYYx+zOum2Yv2tbZ0f8mms4fAxRwKdDCdj5N3WeG9wC9RdB82mjYThVeYNX2+719A6fSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754480394; c=relaxed/simple;
	bh=Oaha884teSBRTGSiKIGE9lPUFGWfd/QmDdOhpBN4yJ8=;
	h=To:Subject:From:Message-Id:Date; b=WgByqm1CafToN8PyR36pz4QFjHXtm0YqY8wwh48KY9s0ZuU98Gn1TdddypXxE97HvRh5PAhiqhV8zEoiivoiF11/rcdYPUkdP9WT2LwDhjItW/5bpxHyI73o0RUE+s8rSos/osYlfE+UoeZOJiIIx4Ag8vnonl07oPzzv6cNKFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UB64vQZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UB64vQZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF27C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754480393;
	bh=Oaha884teSBRTGSiKIGE9lPUFGWfd/QmDdOhpBN4yJ8=;
	h=To:Subject:From:Date:From;
	b=UB64vQZ4PX0n2LKMgiQxsSbFrETs712KeGrMP8LHa1cckyf7RPz4XjtlmPH3P+Iq2
	 Ue2O9eT5NLaEH2ZSTfYItNjI1oPBMRcqSL4BBlCJEMUbP8fBGqYXJm8iIqZDJadfu5
	 YUfpcfU24TVtrqiJSGuD7oV/1phSwSBjV+3dO+UJYk1pPZqz9hnyddrlc6TCvHtdG2
	 WrzwZgZp/jtjdMqA08oQwO70XRKwhX+vDkheqstpObd5JkadhDEuk2BW9pNNRIHfJr
	 Lc8x3l39vKHzqUu4TJhG5yZHsT3hMDLgJSS7tabyAQeP70gSjYofuoZSjqXn+8+LMw
	 Gm7GqF5yIs5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E485C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448039357.22192.5248948948644849229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5cff005027a599a79ab6ee60e5ab52f9d59fd7234ed72cb3fcba59b25f1467
Date: Wed, 06 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754480393
