Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C742C7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646289085;
	h=To:Subject:From:Message-Id:Date;
	bh=hDuaA1Bc6oUvbiEznP8LuRi3V9VswZBXxSUUhlq7yak=;
	b=kNowuFHqlbFR2DcI1hlPieiC3KTLmxV41t0dKhGolisi+5hHENlLFSouRHrtP3Be
	OGn9zjEy6q1Luh8Ij4n/mKxnqrq0ZPk1zeeN7C4o8IuFfu7ff6nQ7ITh4V62TnABs/+
	OAvpIVx9zsvLMfxmPP9LbT+oqL+B0xzPZa41V+aE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646289085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hDuaA1Bc6oUvbiEznP8LuRi3V9VswZBXxSUUhlq7yak=;
	b=c+f37S5E/lUQHkaCelmi5QV3X6+KzUmwJw4lUzN+CcIRyNH7GBaMTAZlqoT3eNvP
	+OlXZCwdoLtnbuBgsgUlv+PJUpXXsbOh4za8dXSTSVXzXu3b/MGcMDIPUByEGotU/Bb
	7lsWgGT4lwgZGvay/KLP91E46Cfhd5zNNKAqgi8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4e79e137-cf3d866e-84fd-4455-b8c9-003b528c5ab5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5a223b5aa80f87ca26caa3718438b62c21307347b8786e1bbd1a750b03fa078
Date: Thu, 3 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646289084
