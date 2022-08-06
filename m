Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E627C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659784252;
	h=To:Subject:From:Message-Id:Date;
	bh=s2K71SfKkjxEsx8jadPBot3YZIgPWUt7OPu1mddbckU=;
	b=JcIzDlpL/5mEkSKqC/SzL/oLBQ0m+8mFWmDS0Rn0vOj+5TgYoqOnt5PB83D9rjlR
	N42fb/ltTC+1FliMgT887bn7FKcENKW6Tn6xcuEwKkc81C++s9mbdUoW0BKGUiNO/Tk
	5Z1zALsx+furg8xAGKWp9/4Vq7b27VOUOJccQOyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659784252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s2K71SfKkjxEsx8jadPBot3YZIgPWUt7OPu1mddbckU=;
	b=bsT11FbkUC0KLEr7d00cu6Hwrxvtv8NPTV1qmoHhUiJPVeIUNf4G6cpgAfjorHOv
	GPI4LcTT5aGOzznDPJDYheXQ4xiZhKrLa3yXb/2Dj9gBKQyIciffhwRRnziMBLrRnN9
	xU94vWG07ufk59UgVndsCdnLNjdLwsDZHv6s20fM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272d9ccb4-bc786ef6-13e2-4735-9abb-01fcd2489854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 503ce0c883faeaa681fbe1d13477032ba3c023ba49be4b680d5fe597b9972db4
Date: Sat, 6 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659784252
