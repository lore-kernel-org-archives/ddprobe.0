Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F9F7E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 15:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651938898;
	h=To:Subject:From:Message-Id:Date;
	bh=/TMnL//YM4qANN/VswuQm+AjpwoGdw4hRhs1pNRa/x8=;
	b=inE9bxfP4UIqRo0XyoOQ9rxEECA1FNHzSh1no7CjA3BVNjH7eyIyGoK2N7x1HDTj
	AdjcLXU+CTylQP+9rNPAiGMKRpf0j0qa2cJgzVSa+2ThQXBnp0llNFQQL4GASzgvn8Y
	yOK5rITGmb2D23+lc/mPjKyAOAx4TxJC/mWHbZBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651938898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/TMnL//YM4qANN/VswuQm+AjpwoGdw4hRhs1pNRa/x8=;
	b=XrTuIYZQFxS+m1LtdLHbRK0pzdv46KtWBYuBiP/RpdtWiZAc0Z0Ieez7RElgQub9
	V4f4YxByAah8c0tFv5wzZsFEHPgbGR8p7gfAWA5O4fVxg2XWhlFlFNwEWrB1pST/Lwx
	apsPv09X+WEC9aS+c3sOHzNhYsifAN8rkaHBL27Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809f3b318c-1e3ad256-bcfb-4c92-b9c7-8cd1deb1337d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47756340e8854508093ca1351478b78a274e5f04f215786e0b99b22d3a5fd651
Date: Sat, 7 May 2022 15:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651938898
