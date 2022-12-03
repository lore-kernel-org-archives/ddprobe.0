Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90457B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70998C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670071854;
	bh=1EdJ5agqEovvryl46TAT+p0jExZzvduaC1j7SoUNYgg=;
	h=To:Subject:From:Date:From;
	b=dhtPH6hqnHhl+Dx32k2auQFtcDbJcUioGkGxZtZ0NGMepPKjkk0g0Oo+VwJz2S2DF
	 cKGo3rTt7Fr53KuNlCGp7NXxa1Lf0nv2tsbyvQZrkwaq90vtHKmH0EXiPCdb2N+hqp
	 2w7T/wAn/A7ANB1GOmC5rDbGu+TXLdRTXXebcU6Ah0ZKP2gTlYmU7C0Sz5smh83Dqg
	 2ghWawR45n1pC1j4ItumY4InIchgHOj/hpjtBVJvpcdAb8MTl8Shxx/UCAkZG1xoPI
	 zBvfIjaDMRqyDXSjJkHbISrjfKCR8gvZdctOZA+akOtwqrJICqUFoIKan56LeCnhSi
	 sAaf0U4hL+pmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5660BC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007185431.26271.16874656674630711475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3232cad645d1ef5fa6abadba5ffe8b778b9b0f4c14f7259aad3f2aa65dab504
Date: Sat, 03 Dec 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670071854
