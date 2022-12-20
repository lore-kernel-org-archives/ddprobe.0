Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFD51111
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DF7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671518487;
	bh=WAsiW6Qo7TbATmkEGjSGkM9QT77Kb4jPVM+kGKNuP8s=;
	h=To:Subject:From:Date:From;
	b=JRlbfKGgwbcYpAPEb+edxUJ5GFhjBQl1AgiHkAzgfMS6j7fEHZuK/z+vC4QaTy+yH
	 Je4Hm0wsabgLdSYqcB6DDKVfpHkuxj+EEt1nKawEXlCkLx6t89GP2g039hFCVeCk/r
	 4SOhZrQpfKN8zvK+tij6gDQa2dqPa9S+WGATS/7zkngYSu5d3C7VbLjyeGoXdCdvax
	 uZqrgmx9v/5wBVP6tmBDKFSjT1FbZjLrFPOLa3f3siW2KIpQdNA7/39g7DcXZe6G+o
	 Ik6uvpE5/QbCKl91V0WrbMciRroiaMfTFn+khevadTdNNF+YJOJRis++l6pECMMRZg
	 VXIi3PInO1kSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A95C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151848739.21510.203122867499992148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae41825d6129885e5acda6589da6f1cbc354a67dbf9eaa267e8a879b0a6e547
Date: Tue, 20 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671518487
