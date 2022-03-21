Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B5C57D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647874584;
	h=To:Subject:From:Message-Id:Date;
	bh=QMjB+akjVY+WH9KilNDMszr3QfQLMMypF6Ub+T+izRo=;
	b=VPM2HLMvUZNHByw4Wu4hxYs3RDwUXes2L+w62WjEfrSpZu3M+adKV23T6nTOZ7wz
	flS8pE3mHsxq8yQc09CSWKqtsb4jcegR1r3WhyOiV582XGD36V8K7cUegr511HK2JRk
	kuFJna8H7UlU5FzQjUENZwl0gA/Ep/HKxpEJTEcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647874584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QMjB+akjVY+WH9KilNDMszr3QfQLMMypF6Ub+T+izRo=;
	b=EQ2lfp8wuiBq02x20GrKDp+LmMx8p7WBrdstlm3Pniupv9X46UwlfQL5rnOE+YJb
	9+7ZtCjxZsBiW9zb4uogkykIdhM096YrkNJFdYJqrVEZPbcXAnt73Y99p0AyM8Vgeww
	hpqtICidUrXnn7oaaG/y4m52FT8LL67V7+dCK5uM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facfab090-bbae00a3-4582-4119-90cd-d0b8ffb03f17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 566a457fcdc4a9837bcd19951040b565b9b14959f8d0edbd55efa0379015f130
Date: Mon, 21 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647874584
