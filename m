Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE17E6
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB065C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678408445;
	bh=LYY90NFwgKmABpZuVM6RXkcE+zlAoblxqi/RMCo7lQ0=;
	h=To:Subject:From:Date:From;
	b=GmVV7CCbiARrtfN70cUP7taNg/Wh882qjKWAO0M8pLzpbFA7VSz08OlmVl9hsbxDp
	 oUUCY5UproiYJQ7CZwCpWIq3MYWNzI9NhL8A7reJanQTXywqLO++K1e48cFSO4x/6O
	 glf+5V/J/h5swKIVw7xYegcZxZVW77MvYTNLYC/+2GCHupkckOkEg7QvT+p8HrbLYy
	 lmD+4a7DRN07PAOK+3gYx1sRkHvMShpsydpqxyIxVImpNJKaQ7iyQObSeftISlpzYy
	 96S6qtAHJSqSo7k09YFcrfh+nt6vszXTS9OJs8iABWa3jqwa7GI9Wxmp3mSTCfif0X
	 9YTMtIauB5uIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02E6C64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 00:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167840844577.2350.8683792746092161015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175612913ca943a451058d25723880938e50805924f71d99dc60298f1238f9e5
Date: Fri, 10 Mar 2023 00:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678408445
