Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70177B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647751884;
	h=To:Subject:From:Message-Id:Date;
	bh=zwSdlG31CRQnUqF9fiarFywHiGllY0wocsdhmAaZWTg=;
	b=QVf9pehfwjXdGcDqV1Gykacmyb5ZG4JPcMOsZlqZuBpLUEmRAdF1QJZXgDPql3+A
	YnJHh7b2tUs0ApAcT+RPUFI8kGTpX+VxPw7LeoVGH0Nut8XtTYo4/Zlv5osatb/O7Ew
	M2fAckPiQlT066GpxoE64bTKvNOgUqUwkjXsUfmU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647751884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zwSdlG31CRQnUqF9fiarFywHiGllY0wocsdhmAaZWTg=;
	b=jeW0KCE60nfklHbADaYp/OtBYDiCd3Z7GRzZc9/M2PJlvVGaz+5PvJXC4yo1bKl7
	cUps5Idj3yon5Pjib2jy5OFe9fteKkXzAO2STL3W4WHaupCHvkDl5rdhZzHtahGyz8J
	Me9Kw2b+s0xrXbqrqPd5fC8Oo7f8mnq93z57A43U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5aa6fd3-f1d59392-56e8-4dfb-97b9-a60833414382-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eeb84f7d649bace53a0ce91ce34bb368d6675852d050220c3d05494710b51043
Date: Sun, 20 Mar 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647751884
