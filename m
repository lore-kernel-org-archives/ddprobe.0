Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD9A1FC1
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 06:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021BCC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 06:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676441226;
	bh=dbdokZnn4clz7JN42CyTDoR1+9ebBmQQ+IwhUaSkCHI=;
	h=To:Subject:From:Date:From;
	b=i7dK446ow+TxSvw1tAHrPgVmVKYK1RbN2Jt/Ls5fdogGOdvJkPbleK2CDCBtnTSeK
	 Rxe2ILufCHgGiKzDFwrI3D6XNaYH8D3mBjcKzbNIcpylhjmK7lKndHhmVB6C5Ljfu4
	 T6tjk4ckpl0B+O7qZOwU34zxmHpQWSiJpwJF7QZAwt1eMMAwt6rSqI3Mp76V3z5cIF
	 KmZadFnaw4jdP93+jAqwxIAgZnMgcB4nAkZ4l7mgvpdpqh0DoTW7c4Fq5w3Bmh8ul1
	 45HU8b7qg/cWvBwfDY4uhWNdJ0yCMI3gOtllK7C0eYBTH2D9b5pHWDAp8KhIdtTAYo
	 GU0sTqxjiznnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3BC7C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 06:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167644122585.31239.4575032041415246074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7860f458890971aebb753782038f090a851d95e4c6deb2c0d3c489c4648ca99
Date: Wed, 15 Feb 2023 06:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676441225
