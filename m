Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522AFEC2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BECC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687847588;
	bh=9o1w1wMGP3KnxFIn3nNB2LxNaL26/7wfG8kHKImCl0I=;
	h=To:Subject:From:Date:From;
	b=SpinYawdlZZb6bVZDsj/1RFc8TyOahJa/IBHo5lsGq2VPhE7zvB9iRV40qF1x7mUU
	 YIEo/3gA2X6sDUUN0cvxjy+3Ni5Gd41dLElPUm0NqqiIYySSkOLRUUTuAga2LUb9mx
	 DwjxjlfWOXybdU3L0hd5nFfSIyhcJwPXgMXup/HNJXXNu94Eq9xU0IhguiTnMIgT5U
	 P3V1ISAaKaqPmXDybK9kh1LY4WOtBfewZKqIP3O5rgKZxqSaY8JJrHQQHNoCaEjAij
	 qVSviO4+auj5jVYV7o2ZNjgtV61rXH60fd2vrcFaiknmEmF2f8+rqceePyWS9onsy/
	 KxSy3Mvf33LUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD9AEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784758876.3101.9027222226352366026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7daf466756471b59df2b87ecb939a2aee8bfe85a4a8dfdc83e2ca680ab0e2de2
Date: Tue, 27 Jun 2023 06:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687847588
