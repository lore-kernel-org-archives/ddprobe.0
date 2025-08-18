Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116D42264B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755561594; cv=none; b=FKd6oE/RvqO9rK46T90XWfYGV4CYrbmA0yTcJWmm/i77m3Eo03BWfdDDTk+hmM+o9LK12a/MX9c1lD3UtMLdRuRMgcB78H9c5Vc97FCKyeRUZzIX/PhIE8fjKclaR7e1LS44izmOW+IZmxTXiW5mGrINRFnkObO7pMpeg6PI2Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755561594; c=relaxed/simple;
	bh=9TT51Ik+ZEfvYkuFEiTW/O/QgKbshAWlwuCOUtEWwG4=;
	h=To:Subject:From:Message-Id:Date; b=gYhv9mk9QucfTkAAofg1wRXogQrIKxaBanRrgd3daQY5LdG1djbw8WX4K+QdY3gE4UlSPa7ziKgfcQEH9lYA4TH3m2H8SUm+NwQONnoLON7Gbw3b7wIRztkraISOjeLXVQXIc/agvqpk6vLVzWkgJwC8cKjqeYto0VAiRTRomb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9wSAdHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9wSAdHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F636C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755561593;
	bh=9TT51Ik+ZEfvYkuFEiTW/O/QgKbshAWlwuCOUtEWwG4=;
	h=To:Subject:From:Date:From;
	b=h9wSAdHEruex/3SgJW9EyrdzmQ1IzCSosc08d8RuhCoCs911hTCVg8/NLHiN6+ix9
	 2k0/Z53FRBtJvnHLyeWvcHV9FGzfgtGplg6NJXXMmMlbZjh/vdHB20wWcJjfPF6cri
	 ynWOb4PU67EkJFUsMQih7bUWC7RhN4SCvSqUyO/s8jYj1qEgXySswuKW9J5J4Oxr4V
	 nqtqLYynAqbacIiWExbHOdsRJ2kLX/nhdkbqnPmnjXJak4bjoqwJJk9hAKygdqR985
	 wYxrc6JyUU4K97NbepUkLT89zD2R6ng1oKnw4BPq5loeVhElmFtmJ8fl/113D0CydZ
	 c2n0aTCFA1JSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC2CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556159357.6934.14512975965541855431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537f445f13ebb4d00ae85f7ef0f38f170793f22927b76315ce2888002ef6cd99
Date: Mon, 18 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755561593
