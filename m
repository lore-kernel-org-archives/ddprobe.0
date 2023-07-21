Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3FD20E4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 07:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C812EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 07:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689925928;
	bh=8y4rOXQb0ehDeuRGSyuPsmwojRjmd6XDP98I2Sl1tQQ=;
	h=To:Subject:From:Date:From;
	b=TLVVW263esS9R/UnQg+d9BBpqATDmhnAl8z8hNdji8kd4G/i2O52qRXHtcZCxT2Xn
	 7VUhuz4y74WTqESrnfselrqtUUPy8ymC8yB0lhWwVr1tBXH5NY47MiZU9IGkLmGI6q
	 FiXVZ16fd6mVdkJs8zKZxotWGsiWZbiU42GAOSgkTcB6lIP/V1Ge++kDLgMNVeydga
	 aNtSYY72CBMwlSdMdssgweHTqw1WmBqSKp2YjtDvbQ5kWj/wqdWOqODyZiwHhneXoH
	 WRHl7fXCBAujgMwjypj4UBRASwzwtYfu05w7qV7ypTTKadpL/IkmOdmeeRwkLFemAk
	 XoJxUjvNUcqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE461EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 07:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992592867.10035.7815543355460130205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72b9d62def8751b5608a2ef960095bf2c8bd5dc444309b71ba2f36f3961d493
Date: Fri, 21 Jul 2023 07:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689925928
