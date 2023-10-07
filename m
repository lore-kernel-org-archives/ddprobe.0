Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843D839D
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 04:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX9xzg78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A311C433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 04:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696654629;
	bh=5rEeteJaOg+LEcYPh8cYqKLnBi4UDo+fDu0bJz8/bhk=;
	h=To:Subject:From:Date:From;
	b=cX9xzg78SHG1ZMYBt9jhC/iJyklg8WdtkoE+q01VzjpfPIuL3JPvS0jZnGHwicZCB
	 4pNd3URB31zlKiox7jCO0olwfuIxHfzMVvwMjdGlRUPwqs/wiWl83I95t2DD7y0tQD
	 IYLr42ha8lhH3FcXuCOcZ/w9013rThYj2IYcAJAZ3XcJTpsWN6TecNev//XTVWdBw5
	 CuqtikkmfqAc3Qv//qVdoESIq0eOZTjnNjpFWxQku4e5pGPLQ9EzQWehn0X0Ku3k5c
	 NnVitrp7/k9Oui7ugOgEPhoGGlgPX8im0HfK0KjzLPF2TSFRfUsCtvLadcmjdOmY/k
	 MdyK3hNyRBO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C167CE81E1E
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 04:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169665462877.19444.17860596497610044729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f340dcbb5a31455559d413ebd8c89d37c5a034f57ce8929bcc5adb8af6c78ef7
Date: Sat, 07 Oct 2023 04:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696654628
