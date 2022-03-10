Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809C0182
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646937385;
	h=To:Subject:From:Message-Id:Date;
	bh=8N83onilsgDxRQk+AeK5EqZ1hwx/GYw8nixLBMj9aRA=;
	b=a1l4vNn3x/nzFCcSHspqQVnivlb6ZngIbrkjcTuuUXHxUjeh0/ZYzC8/Iso7flAY
	Y8dpLjg0S+TKbn0CfDOVYDu+7+DN/4So9wPpkcLJf5Rsi9xgDHwA2Qc/7gqhDYT1Wtv
	63YBTeKCVP+06J7DY4FTRa4F2GCpMrMOci1Iwd1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646937385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8N83onilsgDxRQk+AeK5EqZ1hwx/GYw8nixLBMj9aRA=;
	b=HvSYqz1xaYrBhViQPnvH7a4Cywxo64J/d5eQhsHGEtfhnm+NFWA7WgDCklQ+7f6i
	GglEsAlBwp6D0hgosS541NhEVSv6R2S4Iy0oGl2TATJvsGaGuZL/54rh5k4Dru3CIfb
	HGJjuaW1qH/yPKvm0EXeVdANaLQh0fy1+Fz+tIps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f751e27a4-d805ae90-2eb6-43c9-88d1-3209f55a5b94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0f48b3d80cf07057bafb0328c73675a3c6c994166b0e17c1bf396f62b3adee0
Date: Thu, 10 Mar 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646937384
