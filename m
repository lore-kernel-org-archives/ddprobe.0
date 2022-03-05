Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AE6A3D
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646470884;
	h=To:Subject:From:Message-Id:Date;
	bh=eaVsy4CxYcXv7cZo43sEVZ4oY+ag78jEYd4emHmmDmk=;
	b=Rcx7yjVWbFcje6B7AxtzuisikSYxzYPdY7L65yTe1Bnx8fLSIYFOb/cx4KNINBP7
	ZJGbFf+sEG1bPyOq3LQjrSZ1HqcsKOJ3NVYYqKtWZP/kRs8nf0Y5d3nr47XsneM5vzy
	sdTYjmsRaP9XXBmJm/yID0sgfntd0yfRQ/4FbtMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646470884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eaVsy4CxYcXv7cZo43sEVZ4oY+ag78jEYd4emHmmDmk=;
	b=Lu+53nXQrX1KSGPsjr8VIJuiOyOuu8p0WYjJmM8yC/OamdhGZc5Y51lgovLeMSxV
	MjHPF5aQhqJ4F49/vSpf4Ve0fD1+V4GddHeXhBwWTspT0FAH8ucqgc9Wh6dpqZLaoKP
	Bs0xH1p5WyaCCHi5TGJaE/kL/Zck8bM70bSHpSjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f594fed99-96026f88-611d-43cd-8f1a-bf6ad447d135-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03a3dec8007e60003fdc2721d6c23ced5aca5fee28c8a0be757999d0da3c56ce
Date: Sat, 5 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646470884
