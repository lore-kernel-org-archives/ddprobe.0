Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218E415AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657682812;
	h=To:Subject:From:Message-Id:Date;
	bh=Fgu4i/IobqFgUkXqKlmvMOPZSnW9+FXV5VToBHIZ7J8=;
	b=UMP8spa6yviR4gpw2YVX6QWdA/qKWuZ1aURMfDPwElZ7cbI8ZethXmXHWEmsfKLF
	wxdAF4+VWUoNQUdGb+zFojYzQZzHu9IDqH9iudaGiDpv5iYXhu43b8iOz0P/GZKXAmN
	F8rwn/rxQXp7r5jST9TSbaLCqkz2kSmQ90nS5GUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657682812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fgu4i/IobqFgUkXqKlmvMOPZSnW9+FXV5VToBHIZ7J8=;
	b=GjbOvyEaDRhQkdc9pVeH8Jy1WVvRrVKw/YIqaCDdELg58A1QKrCk7/yfkEzrOmmE
	Ujqpzvp+Jlx4oWhGomiUyEtLWghdGi3XvSfNBhg/09vCCE5DQbRbhfqH2RK/VG9uYci
	0Txg6pRuVdVYnQVEAASWrkocA4RSywMkhTwrx2L0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5985d94-381c63fe-1567-4ac0-984c-7255c3da1420-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c048b82343a1bd2f1497627188059ea3bb25d667bcdd03d6c68231f3fe32936
Date: Wed, 13 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657682812
