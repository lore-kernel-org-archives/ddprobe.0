Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4C48F6F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufBM95Ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C1EC433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699348696;
	bh=e2RqFX4Lx7QASNQiDnJhMJC0aurh2gNNw/8DPQqx828=;
	h=To:Subject:From:Date:From;
	b=ufBM95RuWjQH9YJrjt9MAB9GZfaAr1SVJ3vuoE+h1kHCExo78IFyoVKR60XjCP0Bs
	 22ZNQ7sK+7+RsKhdsxv5+hGn4oSZi/DfvAtYSBZ89LLA8I9AulyEZiIT8vZrBl8/lZ
	 IZg55iX8KY+OaCIYdEECeMlfmS6ErnP6u1fvCA01FI3JJBCniSR7xXOCBDdlIrMw2x
	 jsh8bNab4OlbKmk+jTw8VgFa7nFlU5oQY/O1VMiOBNHmPMuU+xKsaHIW7mg6zmDmAM
	 070/+VCUXGDhl1Dya1hznhYdA4K47OpuyDOGdV8Sx66HTjPOeyEnGCjm0aTMUBCNcD
	 lYFOws7es1N8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B942C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934869642.2223.10452214907856919006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac48ba4b02916162a7f6fd825c2529ad6cf8acc919a8e2425aa1e7f5b4122fc
Date: Tue, 07 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699348696
