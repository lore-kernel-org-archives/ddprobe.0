Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715B98489
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 14:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEE2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691246588;
	bh=h2y5WSBziwcsPVQ1Q5Af+tk4VX/r1oSBwy8FnH2WTFw=;
	h=To:Subject:From:Date:From;
	b=Gtx2my+S/zJfNlmXxE5KdtTyusuJUbuY12wTsnUBWX1ixGZN1Tt+czYdZwjSyWzst
	 LI7jj+MOI53BhMlYgdPz2BpCl4brhMGG7Xp0zChI9NmfAmolJN2Q+ufFC4AIhw4Lb8
	 zNiabUXym27mlIed4wlPPMCRXSaTM9xueK/S1fjDqgkDhiytRAyhCRdpx8F+yfCfmz
	 ZL3kQfkKbRzE+jeFtqz8l4i+gE8mRb2w0qQsufn5PqyUG4SgCj8mL4mrDuOyN0npQS
	 L30G7mXc+GZaxguVy4HEeNuNFLxDapXuiZVZQy58h7t18XW6+JE5D3IVGGi/WOMqWq
	 sk4cFPuAARQVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A90C0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 14:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169124658870.26540.12690348063068319017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6e2b61fafe14175842c7e1b634147a6e121996b976c07059c68d353ae0d2c8
Date: Sat, 05 Aug 2023 14:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691246588
