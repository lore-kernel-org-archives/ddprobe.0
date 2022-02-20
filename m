Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C24181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645317984;
	h=To:Subject:From:Message-Id:Date;
	bh=xuW8DxKk3CilBsKC7TgBwxPGjL4ZQoppzKrbaDH/tEw=;
	b=bQrenddjPXTp4AC4Cl75N3fnE4+Jc3F6cYdYDW5oMnEOPTguQ0H+N7K/VxmbC+tb
	00MKuzJbBPS1lOAl3sxXywyiHKAJL9Z5Sc3zVpAC0qkrcur4Ezn0RL/d1+EQ/gchkfz
	44Xac9lLr5ffYCYZeNrfOV/w9+GPzE3Gbs7w7fa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645317984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xuW8DxKk3CilBsKC7TgBwxPGjL4ZQoppzKrbaDH/tEw=;
	b=Dp5174w2Wu5+Lx5Sh4P2sEXtO19nVim+YB8KJmtd5KUBbGzWzK9Ao0UTFx4C09tw
	2IsuUIm+OFCZM90Vt+TSjMnd3OAXskoEyOO7/+gpd08oJK856wppuBXHc714JjbGLqg
	FypOHMi4Tpi1T8euuWWTGdPZEBjgvmLiXi9+gU7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f149811d0-8978103c-802f-45e0-91fe-6c25f8843ed6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8027aa99af33234e197faea92039d893eff8a7699101e17e7d9db943fcc70a78
Date: Sun, 20 Feb 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645317984
