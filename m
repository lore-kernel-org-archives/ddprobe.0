Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C230B7F4
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E40C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664353853;
	bh=ItlEFnJ1dajFqRuetqtVBpOkFiV5dY3TiQbMETNLgKs=;
	h=To:Subject:From:Date:From;
	b=mCv7s4RMAQyt54WK+4sKAR2P6rr1dcBUoNbRIQFRkYEpn8y+VpTqmSzh8X78vZw+5
	 vx802WpHBf9e08gwEzwaX5zB1I138huTfUmi8FlCDze0qj9PTl8t79f4ib+vYAezSu
	 FHDQTznT+X6UiEKklMeOeNvLQPN35XScyf+RdkTuQM3/xWYllBSVnT/FYlmoFNl8gN
	 dHLywSu5ytJ1R4IZTAgstckiqzVxDu4i6ztNmVHfsAJZUSnIUNOOA/7s9gGYW06UaN
	 7WEXv4yXbogj4lQ6rBKT+C+wSOUnuz74hJwgKGsKQK96NVwdnP/JTWPuu+m/ObnRAL
	 WaRjRDsQtY3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F04CC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435385331.29661.12196726210820634532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0cdc2f3e729bcf43f93f31f923ffadc2746fd4e7bc1c6943e5452c2cdb79c3
Date: Wed, 28 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664353853
