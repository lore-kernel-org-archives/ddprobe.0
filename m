Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF591B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646496384;
	h=To:Subject:From:Message-Id:Date;
	bh=oPt2rj6nCtqifaeSDgKM7yvSvVsq/Z4+hqqn/mg2Gcw=;
	b=YUr2o6lWawWIJ7/AqW1vriwnH7RzKwKLoOXO+WctYtZGNqtruyAMP2aSXXhvp3JE
	SAlgH54PjJNEm9NVuxAWTUtC1dGInrdrIMwr5bLka2QfK9m4k/CFTfeOzUeLtZr6XlM
	XfFxfu9CD6TncragraGEIosmCg9iyW2oqIPVqiEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646496384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oPt2rj6nCtqifaeSDgKM7yvSvVsq/Z4+hqqn/mg2Gcw=;
	b=YvnbqckL1kZBtzkH+ylDfWRqsyiI4sExCQ5EpCLYzkM1h2Uj1KYcv2dqzBqbfjm8
	9YJH+U3SBdAWaHlY09AWPz5rhgPZFvKXcwAkTr84NshrzhWGe6YSlVzzfeYbFlb7rl+
	vlvNYw54N+DNV4xez4N8+rpzFH8PhHNy/ROaIsBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ad506d9-bef073fa-7619-4ff3-aa70-23c76ec6085c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3490c7901e369839bdd9a62035b062e3c8834d309201bb484f1685524c350bc3
Date: Sat, 5 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646496384
