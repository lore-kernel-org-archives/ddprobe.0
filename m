Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1BF1FC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645014084;
	h=To:Subject:From:Message-Id:Date;
	bh=nYMYuhtzUPx/4n8AGdUab1uQbAmF1AwAxz+MKwbZlFc=;
	b=hEq9SyZYIk1QnTDPSh8PqrI1r59v0qZiMVCF0Hwe9WwIiLVPwS2uTKhH8uD8weYe
	gck+GehZW31ghW8FwLFGW33+Efe3xG+1K+q7FHqh+VxImR0onhP8p7EOWnrN/ikIqlq
	WQ+ahvtDMiAtmpwtWQtvkOSXkczYmUZej7Ih6i6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645014084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nYMYuhtzUPx/4n8AGdUab1uQbAmF1AwAxz+MKwbZlFc=;
	b=ccGklAUxEzyqpKT+BCyG9f2+0OnYDDlZf/0IjjaSet7bxbwHA9PI44GWWcRoZIMO
	Xw5tO2NJDVnsa/gogkhQ5ztMfCY87LSoJJWGj2d3zaK2dusqFgY+OKy99zt7UJWJc29
	Y6u8qJ1ArQisrZ0CByefKxyvy0+gunTsqWpt0ec0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f027aece3-29b07665-b269-42b7-8114-4eff7e532f85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f23d22c57aa9a9776f3bf673b9801753702d6a0eef01e018180659e44899097e
Date: Wed, 16 Feb 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645014084
