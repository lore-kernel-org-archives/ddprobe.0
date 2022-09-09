Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9629E6AA5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC3BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662764453;
	bh=PvtwssKIuvcrtL4qbFkCay8O8AuW3HhkaNK+FWbmdBs=;
	h=To:Subject:From:Date:From;
	b=tv0dKGhsWHASgmL6jmEh3UagGsBku2/Qlu2Cvv4DnomxMTvVoskynACFJzn3LiFvZ
	 j+UUa3lyBozw7sZJ/Tt6YhgOQVss+XcVb+POFGR2CR9jU3ouWatU4dh7VoHAvzJh4l
	 UcXqqZpKEn1k9OH1x/Jz9t54Lf990nWNoonIEp/ymZMpVcOmYNFNapKZDHVIUjQyck
	 MVKTZLy/XwlZe3PEfKC0b8lCc1pmXOW2YwxyKlieIKxhh9agJ35rRxHs0UZY4VA5ip
	 vb2IX/AxKP38xI0RoYTqKBrj+JWqjW8VCusFXeEhI3M/MK0ZUzZ/iP+yGzjSBlX4GH
	 G7dDWO/Yg0AQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FF3ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276445333.5477.765551833717945616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fa0a5e47115a1f4304f6f6f42aad0ec3b71b19bc9122df48c10ab9c965556d
Date: Fri, 09 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662764453
