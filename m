Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054B3ED4
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650365758;
	h=To:Subject:From:Message-Id:Date;
	bh=FByptM1eMA9ljzs/w5am+ZPn86L26DATfneGeUI8vVw=;
	b=jMk8PVDHrq9qvdg2A2LiDsR7J+PUNTCtKuXS4zBlmcDl/f5pEDHh1LJ+AN5ZjyEA
	HSxFzx/d3inYgi8VnjCZ5vd5+ge66Ww2APNsl9i+bg+WsxKqhFqD/Bq2t3EjP3R4UyE
	BGG49T/keIyiiE0Tsmm+P5XzDuLs2qKHTP3vY87s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650365758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FByptM1eMA9ljzs/w5am+ZPn86L26DATfneGeUI8vVw=;
	b=EV5u6oLKKZzkoZ/K1y0GPRKqAYGAaSSiWZO+i9Bz0LKTmQhT5I9dyNhkeMEvZN6y
	bNNQYuvtiFJp2faNdQvP+1Ln97kDNHCrZ3oU7QF41zl2yJiacMxNN8VG6d0fDg8VaUt
	MbzfBLQHs15qK+VnxGL3T68Qlv/cZTxk/i+fcWHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804176fb03-84527eaa-258e-47c6-a690-967dfebec802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 004bdacadce6c41f98f59dbdf38971ca0b5c17a4263724fc0a0c47ce19820fda
Date: Tue, 19 Apr 2022 10:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650365758
