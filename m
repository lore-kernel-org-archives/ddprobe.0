Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241362C80
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 20:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652213219;
	h=To:Subject:From:Message-Id:Date;
	bh=8aOtJxsDrB4K6HIBRc08RLkouYpT3FcWr2PfQeN7I8Y=;
	b=GVzlAqyOWdOER5fw4WZg27txEIwF2zQG5nSC+uAoJIKsdevKMFjr2jEkq3upyZJt
	k8L65kurWnhJdfsoJPoUq8HcY1GkKeDvbSi+S7Dx7IVqgf1NExPIbW/tLBig71Tmx+z
	mLReoB4dg1An0id86lpU6ZoSYiAPL4TwUuP90j3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652213219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8aOtJxsDrB4K6HIBRc08RLkouYpT3FcWr2PfQeN7I8Y=;
	b=a3fqyvASUrhqadAgyuJ4ZA6M/vq6+yjDzQ0v5O7oDt8ET4KO8VMJ7whvG6Z2EPxF
	Tup0dyo6UFjj39UVOX6xqjVJX/6DFG+BfvN7K51MVa147JP9GQcFf8gjyKD6K7qZfsX
	bwILIKdX2mse/jhPiPcr4/jgFD/jJQswf0H/LL/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af95006c-e8869bf4-0aad-4072-a228-05311945c8bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dec3e960f74b79ef4178cb0498efe074c325b1a04411b18e54fff0ffae95f4d6
Date: Tue, 10 May 2022 20:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652213219
