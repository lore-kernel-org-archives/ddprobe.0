Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD92F6FDF
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74484C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668376254;
	bh=8Hbr9k4vFkjnWLlDPh9mbMd/iUO1PDnO0IZrQbMLMs4=;
	h=To:Subject:From:Date:From;
	b=kaWB0WM2LH11DCnTUYyHBIbK/IkPdUW2+h9YEiEL3ZYxUbQOZp8qygcpXCcJSqe2b
	 cJD3RXQojpDN/lbzSdJYTvZtop92aYUAEOoNdqhVOInIIytmqTDceKM/BY7rH2zU8h
	 MfKMoQjoZwYdEQ8F2zbM8xNi+Yf/QoMFUFeSbPbMnIz2xiBa2jdV3iZdM5GL862Lue
	 lv+NPmJcsUS0J3TJ7cvHByVBp9SSeFJVfsK0xWGuEqBurgcQ2ht7DW69aO2OnG4Ogp
	 k3+oCPHfeHDx86y67UqFJK3etjuR+X+kwV+9LcSuZ2gguEIaCXfosvU2UWLvbU/oys
	 jnVndxOS06LnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 589A7C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837625435.25699.10270232718591271220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5218af7a2bbbd4102e9202316a564dfff5032af1262fb1f2d099e9a96c4e9834
Date: Sun, 13 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668376254
