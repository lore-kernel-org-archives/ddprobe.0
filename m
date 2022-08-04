Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547A45387
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659641452;
	h=To:Subject:From:Message-Id:Date;
	bh=ErSwLvCI8AsLFkKzmOKX3itPkg35cBhvBexPs4+exzU=;
	b=ArmC4+qor0tTfm7g8azuaHE9hjerlseJa1rqlV6Rxk6HNV0bds3ab/N/ErPVwIfP
	6CmlAFeLSyZMLFqHA8GJpJX4sJ7bAQWz6kGUDbAR3lDKNI9JmBmA8PiNfjl2fGnN0J4
	FuIv0Ff6QxK2s3pZ6ddPYm41jEYvj1BrszGYofwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659641452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ErSwLvCI8AsLFkKzmOKX3itPkg35cBhvBexPs4+exzU=;
	b=EJSI4DgTaJ96g8gHa1vttqdjK4hM8JaKSUZ9NuY3/Dgq8Gb/5PJ1djzH84jMSorq
	BwW2/++BAL9M3nuJtAN4xkQEDP+UX9yCbJ/WzKiNZ9NK+HY+KQNjc6ueZnLNRjgQxTu
	ljrXSR0RcLQC+WDjH5WzOwgdsuA5yd6SGl6l2ZX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a56d816-fc7fc44a-8af9-4ef3-b1d2-ef6593caa713-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df7d571d421bcfa94cfdf1cf113627f5524f164321e847fb95c7a4ca38cefb74
Date: Thu, 4 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659641452
