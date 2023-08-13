Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B191FCC
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 11:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A4BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691926988;
	bh=9HqXQKDSBm7MzxkhM31km4k5SULxELt9llQruAHH4lQ=;
	h=To:Subject:From:Date:From;
	b=uKPs7H03lcu6jMxRuCQnp40Zv2s4hdjtYS90MOxfSxjNm4ebsQxumk8uZph18n8IH
	 fGHtFlRax5BH9KUWBDY4Bn2l99M56IgOd4276jTV7XFsFrqRyqrom7tTmpDZLhXl95
	 Mai4fNJ6Q1v1s0FV3u3ZI4zLVECtfOv1mnpjruktMeEPr+DuQxhodD/AvFvN6seQDt
	 v6tirEzyRJLKFxRhu+6CGyYyP63IvONKedyvfrDEXF7YqgVAXpyo6mNid6NEGqWLea
	 2krkoz4tg0Bsvz39n7nZOj6qIrmYbbrKVoOt3akP+tJ/1E4nKEvtBwCe3ZCO8zHThw
	 Ht8uCrdJ0KZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B573AEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169192698867.28563.17386413508460492362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaebad744c2089c20abd6058569302981f0a403f18b9f5d7204083624f470ab5
Date: Sun, 13 Aug 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691926988
