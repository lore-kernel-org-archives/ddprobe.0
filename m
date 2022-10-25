Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD44D2F2F
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADB7C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666724453;
	bh=Zsw3O2Od/fN4mZI7O65vSqzpOUY4litpIMEcKDFI4WI=;
	h=To:Subject:From:Date:From;
	b=uhMi14zK0Km5+nIKtveSmnMI2/i/PBjlFPdOO27KIfUJEef9jMLOPQCBA/eOfcVV/
	 AKfNnRPRnFzE5uCxabwnqVBSmPJAnz1+ayQ8oXgoWGQNeuhlb8TBJZF18JPxXoACwH
	 FBC31sVWHbINZG7MH0pAQOz6bYOa1yaJ9HJOH1es1sV+rbwoAFuzGf/XZv20jY+U3x
	 fpiyJ3sKIoiI6wanP+oosbgS0ti8meZ6axZTWiJiskCTJoZlebx6Ts1Em1cxA0JTof
	 VdJIJQHO6YxpmClXcscRrH8Qt+CgMRqGezkZ1jK9xghF0YwOIgsRXqSTtrwp7g82jK
	 MPGdKtPQ9SFgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53488FA3740
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672445333.9807.8799291252265086914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764df0a1982aa11205aa3e7ab98029d973b548aae02caff5e1792e621730880d
Date: Tue, 25 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666724453
