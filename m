Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B856450
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646794284;
	h=To:Subject:From:Message-Id:Date;
	bh=rKhRelggKms3KiU7X9CQEQKkGjoQcYPGHCNFfbdkn98=;
	b=XQZRgSD7w546Nz1vsoUA865Iaiy1b8Ltlo1ScNRCF3+CsUC6XbpudzqF83CbKofD
	kRhfIpxN95iH1KmxQYUaYu7B22TcVf/H/cc7Ova/KN6z/Ojdb7ZcTNGGJDYvdyogx4k
	spgpEY6vYrBjFU490lxzMdWNBVUo3unhj9iYqFbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646794284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rKhRelggKms3KiU7X9CQEQKkGjoQcYPGHCNFfbdkn98=;
	b=kZxxZGiLwg4Eo+tUOHw0VR92AL6wgqFrBck0yekQaJG29w4s5VUY3nTmE/Lg+XOG
	o/qA5Rol7Bjamy3kWy9Z1rvA53Cq1lajihNBMZCT/eK7eEDxI+1QhrJIsfajfAOOVOZ
	0MOCiuB9Xis/N3PzkALhyzOG82B1lzNtfIbrNCcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c969eeb-ddd874d0-9134-4354-9617-17299e85ba20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9893005338495c1ed97528a6c715690b3a8ee5193b709bb78266dc1ba80031a
Date: Wed, 9 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646794284
