Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E780625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 09:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651742818;
	h=To:Subject:From:Message-Id:Date;
	bh=YF8w5wcpvAMcZKYjjjV5byLgACsjhsdiaxu4gbyOsZM=;
	b=D+Pe54IuH+3GnrrdSod89UjNzK/Gs+qPFIypHD2rEXOxVZQsZVJMx3Cmrlnthwsr
	d52m2Ndy4dsdsK2TT/Fsvfa4qywn3aMWQU6uVwxqEK8gznBBz8NYXDkorfb0ZsH4944
	ErUpGbd9bmZfADpOiIW4xJRdZlVwe5Cvsoof4CgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651742818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YF8w5wcpvAMcZKYjjjV5byLgACsjhsdiaxu4gbyOsZM=;
	b=OmOX3slTBWS88zXpHsF29009UR+aODMEGxvpRc3kg/VjpHca+aulQIOOI5AdZOim
	ycJM2aeCg72B2FACDZ1ZVDAdQ4qP9N5XeEpHA1/Sm3AlkM9kMGicRl8smHysqaa9hdO
	5jW7NOXnn+f+K3AYtV0S+FZFNdOpaP5lA6wnP6RQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180938b3fe2-079ff8f3-02d1-45ff-8336-a9ade4150ca3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff3ab219b98f9e876f7469e52ee6bd70125e53e1ccc96e7cc6c5714e616e56a9
Date: Thu, 5 May 2022 09:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651742818
