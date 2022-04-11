Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E451D1840
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 11:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649677738;
	h=To:Subject:From:Message-Id:Date;
	bh=UbNn/yRj5Ah81sUdijni9urO4S4sMzLCknhDlp5rjWo=;
	b=FqHCE/JuIaJ1jiRVIt+yX0vP09PJsmOVKmUUGGz2RZ9zhg5NJm8O4DSEzjs1Qg9/
	tnPKx/UtPaafsFIPl8/A+ThHWqIobkgvQ53T6tw7vReK+LT1kzfNANudO0vuOqb315S
	V77o1bmdf0VOfVgCmddo86CCLxNrSw6akplMVVs0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649677738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UbNn/yRj5Ah81sUdijni9urO4S4sMzLCknhDlp5rjWo=;
	b=EdAKf86Qd1GldTuZLbwon70mWGvViAukp6kYS0a5+HuQYmKYyu4YwoMK2GoYT8kY
	jt0c/ls9JT+s9GY7T/C9yhjDyJBZkVoohgq/ZsWo4LWcuO0ybaaMA0bKY2Y38y20CuW
	y+q5vHtyLNkLu4UbM16AwAWTL5C4VFaDsuUAlCbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801874a11f-04a39c5d-5e91-4f5e-b328-898b93979e59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cecb12c22d08b12c34b133ce4968e9c7328ee3787a36d4c2cd31379a307f6ee
Date: Mon, 11 Apr 2022 11:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649677738
