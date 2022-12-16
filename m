Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC02D377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74614C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671152487;
	bh=WSK/LXmDqOGaeLNeznqb4Em+3jjja83vhGlfdcspvqw=;
	h=To:Subject:From:Date:From;
	b=IsYHfgWFuhZSHNkrYwQOpQMrrEDA9tDq9QGUVmhHc42/vhDk6D2dHkYr8muOROPRs
	 ReBl8r2U+2cb1aNvJ/oXU+CtB+cWsJQ+eUQUH5IOIUqiF2hyPDmkI+CCN9dzWmXExT
	 fbP2NIG0ofVFVL2RAjReRANzvdknzAFzs2iblWxNDQNK0WG8N11U1kCjarTtu9hpRX
	 XMohenJv7qqHs8srkEJmrBr4svUNuSaNBzjqtbg+DsRRPc7CgR6ZfIy33wGrdFerqN
	 Jzt1FGq1HZsOHxthXbuIitFpfTM1LrH3Zs07pW3iIeINkULPXu+TG8ET0oohDTMyNU
	 7OmwzS7zKVo/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E064C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115248738.14224.6160898297851236012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4580992dcf0fcf421deb406b40dcefa8728e902c2119f119a7c398289ead9875
Date: Fri, 16 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671152487
