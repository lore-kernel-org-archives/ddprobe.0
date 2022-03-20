Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755893FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647796585;
	h=To:Subject:From:Message-Id:Date;
	bh=zP28weTiGsQ3a+FoPo/3SaMRS186jPwu0rDn0pkrCm8=;
	b=KaWKufhry6qlnLmWNW8Ka1FSyy1rSJ9wykBIhhlHFbqCCGBuSelo11ESNrH+r6EO
	ITmcfkWGa4SA6ujKl/pauRWzpr0BLzJS4dipyP1TyKl+XT8joWgOV/2Hikh5Z42fOsM
	xTc2MsdqMAWEyzDzcW+u63h+YU0t9DFBKtrsPf1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647796585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zP28weTiGsQ3a+FoPo/3SaMRS186jPwu0rDn0pkrCm8=;
	b=a0NZiZsOwII+enDx/fC9ZNLvTJhN2XG3tDUDhBWOFd2dJmFIL/pb1Vw2D7UhSiaG
	sZXijl1s1Pb9o/qq+KlNsEt9kgUxFzozWG48oT3TrjDuTnAim/LprWVFyYoNujlqK+t
	uLVJJSmexRqE59TcvOr0SXoVqZ+HXL01hK9qzfaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8548133-d3782a4a-3eda-4810-b36c-0ffeb7c5d44b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd38dcad393ff1dc574d6e6e63170a5117c2969a432bb9fb06d6f7b2d98c846
Date: Sun, 20 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647796584
