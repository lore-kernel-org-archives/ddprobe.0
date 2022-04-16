Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4526E7B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650102178;
	h=To:Subject:From:Message-Id:Date;
	bh=wYkFbh5p6ptQR98HzzhLQHPUOSc12FE8wKY7EXJtG4Q=;
	b=j1dlTzaKPAkp0/wRkZSmTR1T5zqVvP9kCa4tNFqqqJcJZnSTDMSdfRCfJ3TEiDfF
	H1L5YI/7PeEbX6eLwviC5fJeA73HXswfXGOyA/sRfuDDVYnCI7lAnSRWVqvJUvBekxE
	1v7qa3H5NwUVEROFY1e1gnGRafFBc5slLfhbbP0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650102178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wYkFbh5p6ptQR98HzzhLQHPUOSc12FE8wKY7EXJtG4Q=;
	b=iYAA1q1cFBZLlOvynMWJVXgYZwuiF5ddlHudizrO6BpKmDbJYIIoZNW/qVFo+dIn
	FssLpVr9byfCxxiw0et1Kuo2+/cvC5NZZsiKGdz3tt6tHD/+QEI1Wrb1jLAla85iE01
	tJz/avu87gdaLkhD5vNP76rF6wHUfMtJpNfttiA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031c1125c-ea11eaa3-7411-42e0-9849-7846393e98e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d2a9764456bea4b7e23f050f1071624d6d8aa1e30db1b860b4d7846be2c760a
Date: Sat, 16 Apr 2022 09:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650102178
