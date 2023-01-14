Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF65063C1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85FA9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673705487;
	bh=VHVHFph8WIsKZqV+vAi8SuO3NDeYccK7g+qis01Qw0I=;
	h=To:Subject:From:Date:From;
	b=DgoTjPFr8M2fx7zKr3KPoUEQoIBL48hMzFoY/Cp8K53GxdfKh6ZuLKF313yY+bEKp
	 A5K/DwcY9L9ha/7kmW8VuOwsyEbcbMwLmZH+WU/CxuiPuAvOiICiUgT8T4WjHlsXeK
	 LGXPhdjIP7x8j37sjgQl8949IB8ck7nMfqSQdE+9cD/f1q7jvlJ82963hhQZD45lAb
	 2Q8ryKhZwg2pAkKoOqIMItyS+g9nv3dynrIWikghIK6+tSeo/uaj7oGP/IcDJBmIn+
	 4aIm8UIhtyvgQufGvbq3VtBVsiGfkBIYj/F/AdoMEXEMaK6A+EDhSSmJLsTreYppbo
	 /fM3IVTNDUCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECA4C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370548741.30209.6867302097687805268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f53f20ce02e364e39d5c97143a81ca32ce20b78aa48b72883e74f79d3043eb0
Date: Sat, 14 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673705487
