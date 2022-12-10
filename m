Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09B22CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9037FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670704287;
	bh=2HWKVpaiksuKuaDJUivRApQmUkZtZER+J0Q9hgctVfc=;
	h=To:Subject:From:Date:From;
	b=nGeUuYW+E0N6nNSmwTAfoAJWC7sbILPlM4Y8Q7p3Q/cihpRB31LtPotchcY+7KOof
	 hFa8JIMbF4I8u1JS3ClpMoG69hC3KqUo3yRTAPs0lEcGLvy/noAuXmo47gtnQYZEpf
	 6Vw6Hr7KyWvaW6HsoWshgzFN9pn1EtAKcSYnvrWaubj/7WcJtyOg0T1DMLyvQXy/RT
	 XX2WMS4sFYHGur1hc75thHLie2fcVo6NXsUV2fZdohGfQu8urJCvh+DXM9g+4jzLqa
	 qNIyA88fpM2Spprw4tSzx+sDL9becJkEcQfhvZldAN+ZtZdONOygO4ADyD1uPdAYOF
	 hFaEZtZN8yqtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E0E1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070428740.29473.6886048054953641541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904ff7eb2b1b125beaea6b3af205ebe6737d197e3e723b4542bf06eb53cf1130
Date: Sat, 10 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670704287
