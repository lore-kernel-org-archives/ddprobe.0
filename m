Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1676134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647115884;
	h=To:Subject:From:Message-Id:Date;
	bh=cHOgX14hjYhgpBNO4C75Lb9i2lkI2pY6L0nMdgcJXyU=;
	b=Ctd64tV3y5vh5ZunZRyVrWp2dvGHTCGtT8YDWkv2D+xR47dc+B7F9xlozAYHqHax
	onLquKsONcp9C1R+cSpLc5pJzE5dlZWN3TDXp3eJlL7WoaxCeVKkuUcyw/voO3IAjSp
	4u5YQ8+lv73I3twQcsamg1OAjftfrpBWy+0K9oII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647115884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHOgX14hjYhgpBNO4C75Lb9i2lkI2pY6L0nMdgcJXyU=;
	b=UeLfzf6rDifcodn+cVfMuruINEMaUoBH9cCA6bexSsXGlMAvENFcR2qjm+q6Qn6L
	eq7rJzgX5fQAq9Rtvnhwxxo6UKrjg7Vfhs3CW4qMz1NT6JyefgAXoQ7+mHEe/Yd2H3p
	vPbbeE7i9iMqM1JP/wUQupH2SZz0zAKXr/GwvV3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7fc1d8e3-a6b7c162-12bd-4677-a25e-bee5a7a711a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e7a70a5bb99a5f353f1bbb8adf2b3c64980969aa1c91e348e252d06fbc72d1e
Date: Sat, 12 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647115884
