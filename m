Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CD929A8
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660214452;
	h=To:Subject:From:Message-Id:Date;
	bh=G1ij4sdVs+Nfx1+PUYJCmftqXawv+LYfFAu6v1ZtIcs=;
	b=S9zH1A5blaXm8cSlhnrK7Hy3vjY1a9iDl5npFFyb1UVrL0/O24qRZhxg41y/zVYn
	kAjLTFOg+J+xZULql4zlvCGipTroYVP4lvhDiDfDyeaEm6+Hu7Sf+X9KSyQxAJ5hWxE
	lkild4AknE5c693uck7ZLsM5QJcb3c6+jn/wQFmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660214452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1ij4sdVs+Nfx1+PUYJCmftqXawv+LYfFAu6v1ZtIcs=;
	b=J07Hz8Sss7UZgcE42y7YgaO2l5ND/eI1fUhOe8gjAYvExnScTO/+DKeBCzCuoocM
	oYbzDPLv8a81afnuyaUOORDunL8sV7MHsk7ia0X7v59oSCbjLtAEIXtzeFiA4WCKYrS
	nwLv7Dq0v1DtGIN6J2Pm357chz5GTPGc+m4G7yN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c7e2135-09cd6d6e-dff0-4e29-9d46-a59d8ef2ee79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88d252424b2d5e786e956caa3d0810be9719f094ca35dfdbe0b4aa9f4db6fa56
Date: Thu, 11 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660214452
