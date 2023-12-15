Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F692D2E5
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZH6cguav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FB6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702625296;
	bh=sh9e5u/9xHv2IbZAigc8ZVGXm+TrDLpTQ7G96w4gE38=;
	h=To:Subject:From:Date:From;
	b=ZH6cguavcKwc+aZK8qn44QsWgs25U++25Wye7kPY/l1/V4WEKbT0FYHYOqR1Otoun
	 G03zmu0jhr1CozW7CJt4AqBq/FjnF7kpuqoVxe842dV7p789+Bgr0aPiK3xJWKzSeH
	 C2jSGy/2zn3g1yRFBHo7GZld8lCCyl/acKN3aNCaps4QKrAhGrbRMQEctfAmG3g+Du
	 BKdl0li7n6EmgYBo4K2FeVMBcY9cVJZrDj1MKUuZUEYVH56t9i3VC+p7eMC4KHccxZ
	 eA7jnu9APu3urPmRlDI9zH9GbDywiNAsUFpHMbdHgx83nmgH+bTfkBEgMCH2BP7uKy
	 2mXP0teklOSBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D885C46CA2
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170262529636.16413.3201254714712416352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0cac966eb913336aa94464ff4784667a8d91228d1878fbcf66d8edc7e92f04
Date: Fri, 15 Dec 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702625296
