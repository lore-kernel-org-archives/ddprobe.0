Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED8228E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 13:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651498918;
	h=To:Subject:From:Message-Id:Date;
	bh=1gQKuzihej822qf0GGhj1bRsjfFr0DP/FuzZbbcruU4=;
	b=kBKTaVVCsii4fmF9cDUUVJogW/YJCq8OWgIekY0K6W21uB8B3IT5i4Yo8dGKj1D3
	MJo4Ss+pwLzhkz21ezVIDiaW64adg9ep74CO4W9Q2qP+nAZbTE42yJaiWnh2vV5w1/Q
	guXOpB1JjSzYw9rlb80XuT10cpfL8SpjWATbsx7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651498918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1gQKuzihej822qf0GGhj1bRsjfFr0DP/FuzZbbcruU4=;
	b=ebJE6YD8LNpQPVwBbi/fka2kWKorbe3CKYj0/JOQFxzy27Ugud/Bwj5N0FeRC5Or
	7MBOw2Ln8wG/qYBGKoBaxhM/rU8pDSRPod60a85dw/y6xoMim4K50g9sY2lap7crOGs
	gcxsQMpAjDFV6WToJUa360f25OHT0Lcc0HN+22t0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808501a186-7977ae31-da51-4acc-ae98-dec90b850d9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21eb6bab181ef417d98a8bbea954530c120954cf1a6e9614f4402bb28b1f731c
Date: Mon, 2 May 2022 13:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651498918
