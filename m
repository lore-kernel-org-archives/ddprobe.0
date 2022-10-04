Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F67442A
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2B9C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664919053;
	bh=xVSa7N4n7jd2sEv4tL24vFT5oSuEgJVtkv0umXgKKSg=;
	h=To:Subject:From:Date:From;
	b=iLmF8AhvEFHh0DQSrxxoiIJZJGLezXHNlHRsPzAhfuMqT+senwYfvyPHJuWLwTmNu
	 8ndsHkoqgo69CZ6qN6s+nQif1I+HyaHIN/hSsEqO9kWphmTSVkBgIF1J9cJ/jczI4A
	 sw8glt7XsTiTWDDXGidvemcFQgXPRS7d3q5Z1eiL4piX2inNjjjnkV1MHeL3d7YfQe
	 u0Lf5Y1AVt3+2+yXVVxeEdqU6kUrpn+bATRgR72HqEPUvakA1xxnI+TiWgTYtFww9E
	 YcF1dp6ow6RUWL/2vflQEUXuNWZTlWk4d6fxCmrZbK7e8ebF/Zr5eE54JuMhUFYx3Q
	 ta8FKmh/j2a+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570B2C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491905334.9131.14715050541848771807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e340d44c7db03816f517f58b3626ca2110fcad06c8b4cc70c1e1ef3fae9574dd
Date: Tue, 04 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664919053
