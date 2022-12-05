Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADB223CC
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672ECC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670240454;
	bh=tUNlpdVSb/olc+mOBIMHAUgJUVaXzyMXQUZggda530o=;
	h=To:Subject:From:Date:From;
	b=vRYIjrt1QLJVwfXBKK+bE50anfYpzaPVUI+bZg5ic3dA5rglInD66f8/Uu+e820f4
	 BAyHyFBXEbB0bthVxW1Y0etD17KMQkTY7H/IN8XLFPfZdjGsfS4aFFWQfKL6BMxt00
	 Vqo1Md8Jki3thQ2QwWkzXPEQKI/T5xWWt08sP7e2MqyiAZtJpEMtf2+Sd0dn2D68Dw
	 MDdNa1zWQqs/6xY4FIPXUGRNX48X22ek6CDFZKRywzqr0MSr1DJbQtz0jhAAb4unpD
	 RpHI2tvLdqTgaa+PKVRSsC5FwLAKZZFfHi7MEUz7ynOSgroHrbMgYI584g2Nrx5tlv
	 E81+PgwDXAo6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FF2C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024045432.21094.14124946546015971971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05263e4ae6823fdd457d26a5dc7cc0df10729800a6d7055506b910f5614240a
Date: Mon, 05 Dec 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670240454
