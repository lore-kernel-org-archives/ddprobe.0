Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C96399
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F63C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667608254;
	bh=ZR+11WOL1sKhED68FW8G8425VWSGL2RPzRLHKWRFWPg=;
	h=To:Subject:From:Date:From;
	b=Z1tavQU3evF1LPe9geRx0g0WItcqeVKSAWj7rBJ0ngXVV8u9OK6TexD8DQkSlulO/
	 mM/Ig7Q91EBaZrHo1Q1o0/Vimnl6WIkGLYr47eLfk3qXITVi2TrSXC8gAhg5mRXA52
	 I1638WewfWL1P8afDTZDrvckdlJQfF50HPI8s9D+AOlbrn9b7Ria5x+NVM+Jl7BzI4
	 kWZY4vHlAq3fe1EYFb4Ti8djUhRdootY//Kf4zNmvasOzr7JBrNr420aqrpRwFwvR6
	 PUHOaJq6inDhRvW16zrqztGt2V13Zs53mEHEhnuryYFnOS3AK8az6O7fVoFRNoc/Ic
	 LG7wH8lQ5cmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82D62C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760825452.22030.13912197669585965135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70435a363f1c6e5cf214198f7cd40dd1d99b7816614493e8c0aa134156b98be0
Date: Sat, 05 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667608254
