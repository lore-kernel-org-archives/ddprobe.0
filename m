Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E7B168BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctoc0rfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81934C433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699220896;
	bh=mE01cqYmi7/ADOneTpwcNLB82l/G+4G3z6UnQs+loxQ=;
	h=To:Subject:From:Date:From;
	b=ctoc0rfuv6XecWTkR1bd36i79R1CbXuLMUuyOIID1iZDBKExVtyNYNmAyIcUAs7sa
	 tpUYW2ekxwgzExBP7/03ibkjL4JJLawV9BKqTeEwT7PqW5ym5RbTcj2uAy0V56fiKN
	 8pv5WfmwCIMrU1Ei8klazIg70D0Q6Mgjp8N+XtFzI42xp9Vm5scxBbLRZ4ncbrmd7d
	 XR+1mL9GfJC2QBN+tC0dfDQiDb5CxLf3Vxr4Cf10fxAxtBBL61P7cfnUu7fH20TekI
	 LD6Jhq3TRJqV+a3wv6P2SNb+BrjXp3MOTYipvxTCLZFnVIrbA3NWQeU0zWE5auNqSf
	 0ZT0HVWof9Tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671FCC4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169922089640.27468.15611872235176556887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4526e130b6e0472fc9cd62b1c48213fb2ee4f09da226fc285ee08953c014900b
Date: Sun, 05 Nov 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699220896
