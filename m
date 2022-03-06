Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FB310EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646586084;
	h=To:Subject:From:Message-Id:Date;
	bh=2iOwcoZETEUnLXiUEMT+1G5xcYZJPhgZsRCaUE+lv28=;
	b=F28sxUyHaBCspT6fC6lnR8mBpecgd3AQLPX/Acto+8E8+rCPxQRlo+8TORG2rV1m
	TgkGkbLKVZOUoZMCYN23wvnhy0S+CXLaREjDfgRqvjvsjh0nHhGutIZZXT07hCtkuTe
	3yjmyd5bXCmCYIipTanSmrlGbHMKz82Us6bKz7gU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646586084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2iOwcoZETEUnLXiUEMT+1G5xcYZJPhgZsRCaUE+lv28=;
	b=Ab7AJ3f+sZbR9oXVPhU25VY9czYjhqKCoIUVbub/PFNZbonzx3Aos1SYTsVSfgng
	tBz+qtUYrBcF5x6MjoEYm/LZrudT4wdyxqqETC8Vum11iynNv7+etqtXr0K32dtDcNC
	Isgp0EAYGvEN6IiT+XeVrRfc57I4r1QTzOeQ2RwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f602dbd92-cbb15341-0b05-4396-aa74-ce5967750052-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a410f2c935853948d4cfae666daaf4ab0e4e2316a0efd54b9979b93fdf1b053
Date: Sun, 6 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646586084
