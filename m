Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BF37A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 08:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650355858;
	h=To:Subject:From:Message-Id:Date;
	bh=Z6IKAmE5qlFNvE4fJFkJgIlCNpo9sn6f5AVh5U4hU3w=;
	b=b6HfxrBHbf5ltPKjY3XZ0yVim993ybrdUwOBUe3QjI4QXL6KiHN4Alsbgt7foXOI
	C864q7W4rjfe76DI2xUQHEwmE7RHF43zRIwjiB4BInNmKDdR4jJX79CCse0jA5LvdBD
	zGPxe5FqpDv9MjWD/ZIa1shm5sVU8yxlEMAY850M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650355858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z6IKAmE5qlFNvE4fJFkJgIlCNpo9sn6f5AVh5U4hU3w=;
	b=U67WpOtL5CwTBSnh/1otuPiMtyeQuCQf5Ww7dh/IgUFLgfW5cOeHTyR4VlRBjf+c
	csu8V1op6VvppK7zasdSQXcbe0oXddCgdqdh1X9gehIsKm/rdS18LkW/b2FFKf+efpS
	XVMBOMa0+Zc5difLOf5I2uDJy/3WxlgL4nJ+iscY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040dfeb88-1d83b411-c06e-4e0f-9b21-d3bdfd1549fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52b64b74ae1bf6742781f3dab2800526944c1aa96dc2849d8e225e1f32e25335
Date: Tue, 19 Apr 2022 08:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650355858
