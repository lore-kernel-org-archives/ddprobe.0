Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161581847
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 15:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652803079;
	h=To:Subject:From:Message-Id:Date;
	bh=4qU1yh0OVLEAHtCX209KpC2uHDfSBL4l1HtcUQLwbi8=;
	b=SOMTwhZBLAAjTgQ27su/2+W93z1FS8IIGPWghHxCGFLm7XWkkgvmZixWX1n+7lYg
	yk5rgfl+mh8Sa4ZaMln1OB5TKFSFaL2whfNgV4OX5TYwFLKPAb3o29FrtEXl3tIS+1U
	XW6bq2btjis8wjgi00TPczfV4IXR3OUipBEmU02E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652803079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4qU1yh0OVLEAHtCX209KpC2uHDfSBL4l1HtcUQLwbi8=;
	b=KFSd+l47QIjxpEkBCp/RxX5XIyAXYKEHkZnCHpsFZkiYaMveWOLMwUMG7BYolmc5
	+EJuKcvCPvQGc0wAx4lui9QPV6UfMftCScub5T7L68EKnDpjPQeThuUq5LMojcE+Pln
	uplHQrIsZ1EkysRMlzzGsnIARKSZykc99hqSJYnk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2bd8c7b-29198ae9-1de3-4bcb-9405-5ea66722a32d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0552ea9a1ae6b981720d1eddb1457632ed1698ff1e7b9a1c5adab4a178395e4
Date: Tue, 17 May 2022 15:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652803079
