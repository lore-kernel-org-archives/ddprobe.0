Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D382C9E
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 15:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651506598;
	h=To:Subject:From:Message-Id:Date;
	bh=4R1m73mSCGScfIMv1YeUKWJQsUbPvyWz/Sc8nFu9DGA=;
	b=VRqM8CeFkssAzCoWu9k3G1Jbl0XPHx8QI37ZpFiF6tQ6nVC56GCallpLO86q8ZBf
	l9+CYanS9r+jT+ycaCmOg4w+2/x7FgriXN1GskfYhfykl7bm3fQIosIUwrwE8ovavdN
	ucTz55NXfM6sW4645s/6DGEPys3KSgsItEQCansY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651506598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4R1m73mSCGScfIMv1YeUKWJQsUbPvyWz/Sc8nFu9DGA=;
	b=FBLiKjD3GoovR83n16OZGoiGAKIwAomHHwE6UE97oS4ANPIsBO+0fwczzlMNQqbr
	ioFu1tdDwnx4c9J4MlgZuYrfIpG+I2BwPzXBVljz37VElxUUwySLo3NSFPUkXcB+rNz
	uuGjZ3t3WfkLcbT0CQGIztxfX7KRt00zq2cfOPmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808576d174-1d7324ae-e143-4956-974b-4508dfa1ed54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1aa5e48ae3045786b07b27716cbe2d0b3c65783748c9c442344ef7315abe15ac
Date: Mon, 2 May 2022 15:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651506598
