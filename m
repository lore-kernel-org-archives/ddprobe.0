Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC91EBEE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DF81C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668009054;
	bh=qhGPxtI5/NtlSH/sQQZEit+O97J6vr7hN1C3a9xNWCA=;
	h=To:Subject:From:Date:From;
	b=ZRx2iHp0Gz5NqxnmDcjoJ7mVmczQtbv5eqT/jxr1kYd6ILWVpXU1bYdjmZmtebCC6
	 5fmjo9XdwK1nWBx3VzW/E1988aX7AgE+hK4WrTvoNf2YwQLaOH8FzSrT5sTYI1CfmL
	 nm4Ha8ckdKzhiNOjlFBFhevrqHuyBW9zDUwmgwIOGS54QiqhqIaOMypZmjC9IUSpK8
	 fsC4gx3uvs/e95/LNDpdC2kxUvZG2+bNGTPfkYYfVQn1bg7dNjqOrYtg5d6APhSKRD
	 gQ93x6Dwo54vjyXjm7mRllqXI2WZaH9Rr2aei+p+JdupwWQ09T0FUO8+7/rxG1HFAu
	 A1WWiRzlxqmvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BC4C43217
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166800905440.27035.177858313466351703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4325b9199c6009af9ace8d6e053b0375dd68d0f333edb2065e46146dbb7537
Date: Wed, 09 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668009054
