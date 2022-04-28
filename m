Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F221E7B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 11:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651145518;
	h=To:Subject:From:Message-Id:Date;
	bh=PWvbdFhJHvSUR+5FA1OlTboW1Y7dPK6XwE8NFc54OjY=;
	b=Ni65EGpRlOaFKKYv4foaUpQKNLg0ga5Fk6GIjJuCTbjYmakdqrBKO1MF8Y1oBhMI
	+EVQH8jONCHgpMmxqypAEs2HO7Vnk3Nm2XCJ6AuNK70dPYzUi3cRo4GTHbSy/u3qkhw
	JziyOff1/hfoqH3zGl+iVTFzdO0yY5dAJP4gIqss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651145518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PWvbdFhJHvSUR+5FA1OlTboW1Y7dPK6XwE8NFc54OjY=;
	b=FiA6sBHO6y3vsm75W1NhX0XBkWovAI5U2X/c3WrGYn8FM+kozC1Rwy6QeC+iAWib
	FZtRklYbWvtv1pIfiuOQ4BTH97wwCJgM6afjWNwpcm3lLvz5kURQV12+vhnstUr2gmB
	zdpGMbAZPH8AGuuUq5C3M1YuxaThASnTuG3wZXfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ff12c99-7039c892-8a9e-41a5-93d9-e513cfb9cde0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96dacf8b0484220267543f8088f0f1cb90daa95cc81034f231c92dcb1eb34167
Date: Thu, 28 Apr 2022 11:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651145518
