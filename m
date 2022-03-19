Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D5618D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647655585;
	h=To:Subject:From:Message-Id:Date;
	bh=R0cdajx6lJ7ICrvs+zzGa/5OwG6XhnVNAWEbe3xBsFI=;
	b=PzNF7BP/MyJRC8TIHzsuMoyfqu72H/Ns/6dZIhEeK4Pty7Jn8oSGvL22CevDzJ7w
	jrxxfKQ7ca3tI7SB3Hk3bzBIJ5zadanHlcuUb0Sgu7sjm4B/lLexyibevbbsds0x8Bh
	3pSekQNxJdclv1Qw6Fa7BsJ+lav/F1jt1wMVe7gs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647655585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R0cdajx6lJ7ICrvs+zzGa/5OwG6XhnVNAWEbe3xBsFI=;
	b=BjS/xBu7E19kG5j3jzY8vJDee/XmJefOF5v/X/pAmVYkn7SKghENEupI8dIJsWmx
	7oVfhnGzucCU4XI40o2QifiV583Lo6Zcyoz/YAmOgB1crcKUDzEnHYXCDa1yPL54HGI
	iWMEaNylBTCB5z9k+yMtlOsiFKLNqBDHW0Dn2UeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fed0404-d808665b-cfb6-40f0-b9fa-efdeec90042c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 046d2bd4ebc28518dc3cb9cca69ba85a04b1ecccb50d66b542e42faca43f80c5
Date: Sat, 19 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647655584
