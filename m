Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D2E7EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA02C433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679194385;
	bh=BbTQaPCIYHLZMOE3OgsKrNgzeCl0bdDlNz33XR4w5n0=;
	h=To:Subject:From:Date:From;
	b=l7KtuHuuLCpmo9PuoGfEVjqZqNT+Ifen6oY1XFouL/zNJofnRnr8alufZTWtgQZDg
	 bPSS19wJ63CB5FSp3DoUHXFhh6M16bXw3CFkoMKlYgEB6n0UcURaK71GuitJV+GRj5
	 veirOKkHfbG6Q6TBKZy5ZsbEEv47Wc0lf+Me5duZ9t7d2r1Y/Gqygi8YVhX4EJ8PS3
	 tlwzVIJ9+H69DqSNEBda988GlRZvk5zCY/RmmU731lhs4r4iVE/IK+zXHvdYlBDI/D
	 ffDPFNjANDbF8va8X5b/MClZP88L8ekLhoseJq4ktDxTezLhED/W2smDWVjqcULdrt
	 7TdiiNwQ3v2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CEFC7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167919438575.6330.842447384068122892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd749993c421431bdbf19fde808d3c24b2fb2e2b041f6f01a4aa697b211c93f0
Date: Sun, 19 Mar 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679194385
