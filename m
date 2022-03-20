Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570FF2572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647760584;
	h=To:Subject:From:Message-Id:Date;
	bh=l4Bs/7z0sMwNBhWmAkNJ4ecd4spgfq/721OsfX6bGog=;
	b=Jqr/2w/OpggDP1r0ynScRKO72q/LEtOtZH0s2/ZkaamygInikvlf+KykZey+5Ol4
	fAeoH4JSe8KMe7rs9muMzlv7NOYMy1U6VLLs8PXerRwo0LIerzC+k4zaSqnR9PEPpjY
	x27NqhoRDhfl5DpqOZngH6seiB0nbpIU0AIbr0vA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647760584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l4Bs/7z0sMwNBhWmAkNJ4ecd4spgfq/721OsfX6bGog=;
	b=X9WcQJEbfYgAyUYZ/LQEqhhsCw1oRTYoWqICC9oqnMlFKf4vr8P6qlHBb6FXk0Z3
	p6w4LQbaPvBxlcljA8konOLFkZ4EteWKG6XVrSIumHJ/vLlZu4VVHZQjwpFyT1XIv2j
	W7rEDto5r9YatuUh6e2t6sSMT2L7qIUEYI0hupLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa62f300e-c539bb14-13c6-488a-b612-ef89554b3fa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a523cd0bc4ed5931dc6753e4209aba2173e89f185c06720f52d28986f68c810a
Date: Sun, 20 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647760584
