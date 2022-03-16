Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007FA2F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647422185;
	h=To:Subject:From:Message-Id:Date;
	bh=zOiwF3FfHO8SkmTeonThnrch0v2ppAnk1JH/Xm1ODWA=;
	b=ig6yIy9oU+HixjIEuSmYdVJfqeNgnnI/1OK81BHsF/8WyNfwZxclREr7JHwiK8Of
	D1JKs31C6puZGp2O+6KnemWH6+OrHBobMFdsC9VfQ+4JCI527R2TGDQFaNBltBTFpOS
	xQxsolAEwhbPUFVpxtllo6Jnn4RlSAEPXqgt0bLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647422185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zOiwF3FfHO8SkmTeonThnrch0v2ppAnk1JH/Xm1ODWA=;
	b=Ab4TSXvXNgOvMjG8C5RBkMvHlypSfIGA7bouoiQMHE8hSMJEeO9dQgniuOcASGRm
	8G+5WNzy/ht+Uf7OjcT/YToytNNAqMlHSrcHdfsauYI5uxuyVUtWXLg5M9OfzoO0T00
	lIrbE5ywYS2HIZX1+MmdfVOwZhTQBy8cVFQ7Zrg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92039d8e-1dbe79a4-ac79-4206-9029-2c9c1e542ecc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fde4eae44dfdfdd6a5222e5eb9be652855ecab385bf40d6753db302c07710840
Date: Wed, 16 Mar 2022 09:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647422184
