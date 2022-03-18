Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD9C6444
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647646884;
	h=To:Subject:From:Message-Id:Date;
	bh=+s/5cmVPHYyLBvNdFyjGQw30vRxFFaGLseDu7LLBBTI=;
	b=PeoyCMM+bjkgtgPgKy/xsjWE/myeExn6c0+WTHfwQia4bzUNjVJvN0L87i3ipLWE
	zNAU7cRquESYRoA3YSm1Z+8e0OwNrED7xidoVwjgmVXJFbE9pH3gxc0dY8+IyGGBMuz
	iuLltWbea4Z0p7lGteoNXSVXPHs4sdbEPS/08HrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647646884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+s/5cmVPHYyLBvNdFyjGQw30vRxFFaGLseDu7LLBBTI=;
	b=QkFwcr0K7qawVwKA92J2Uto37r4YUU1bGjr18YbM+s+jMQjGL/X9bzszDvQ5p4KW
	8lpC1zzSN+4P3JbBR2C0F29i+nHOO2TnaComezcFWjkAWEyPHisU9IUsEx5df+g7O4X
	NEGKnGYcMvvYn3bTI/Z3l2qBUm0wmqjCtbDfy52A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f68439d-9c253c11-b4f0-47f2-9ed0-a035489acbaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 261eb55e4de8e2bd247a07ae7d0f01bdbd704a288c9dd85e31b75591b03c0185
Date: Fri, 18 Mar 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647646884
