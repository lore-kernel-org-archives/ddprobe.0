Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED3320E6
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 02:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649296979;
	h=To:Subject:From:Message-Id:Date;
	bh=kIpUr+5+rM1hozr/2iTEJnD99QUmxau9l2OCYwB5g6U=;
	b=KFONnOYRPP6Wt+yverqEsotap0JvLezeDgF+5KL9tHMqHIgobq19gsM4JHIEfSWy
	TG5lkQLSLEEZYvQpaDh2Xoz74jTniYEic11voNpmmCMjKOShi14nWqzPNWTM4mkWEyX
	NMTbzjuV2+cXjpaWtZK4yNiEyNfnZ0Shni6IWpYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649296979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kIpUr+5+rM1hozr/2iTEJnD99QUmxau9l2OCYwB5g6U=;
	b=K0jwmp/F5+yspqOlSiXBViitWKxTVCDYHbvYxzQi2van6gObWlH0MruoqVrdW0ld
	NfurGsejaBGaRznbilVNeKCratAoC7MDfVZsgcPbu/8cFY5zNmJTU/10VVZSw54BxOG
	5NVNMU4N3jMVGslIJE7345Kn90/4jpkTlYGvGfwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018001c2b192-8a9d0ff3-0a54-49c2-b58a-60146180c344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9950ec704219bda8beb039e7e60a2ac95d2e2c837878efd8651dc12625098c20
Date: Thu, 7 Apr 2022 02:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649296978
