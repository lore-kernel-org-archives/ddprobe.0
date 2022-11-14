Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A780E2F34
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DADCC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668430254;
	bh=ZBWs/OomDErGnRNuSLrFVRuolM6EjOAriYxOkhy4G54=;
	h=To:Subject:From:Date:From;
	b=q7HMpwbYsM0yZSzKIRcOwDzojRIWmEZxmhp9bt1MURNKJ2yfXr0Vpt+hlp5elSZu2
	 jXQq2lylzFF2WNovX6sdQhxiS7FXpjQpGWxLK2QxRFDgtVnaCR/RAY1iOYv1sXkexU
	 s4MhjwJli4wye0JZV5Z4BR8FSA/K7l6ODhfZqPGNvur5uGngvEUJjl1p44T0fi5mkO
	 Vpm+k8GOcInOrIBv+PLutJxmy1+SX+e5nMImtib7OTX1mUek/LIVu8BrvttkGNNEw+
	 XwbuJ3pOzM1oE4zbFWVxnpoQqw3i1M1OaHik1cv7GBpXz6rEIPstMvUGTnLMjvSfFa
	 Jxh+J8Zn6lDSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BE0C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843025433.8085.18286749669636180764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1bb61dbe9d6a97e6fa13eb0c66b03d9244b691a82ece74bdaaea45544c7277
Date: Mon, 14 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668430254
