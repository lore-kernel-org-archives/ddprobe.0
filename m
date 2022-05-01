Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321DD23D4
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 09:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651397398;
	h=To:Subject:From:Message-Id:Date;
	bh=j6Z9cMOlRKa7mFBFGv7dUXyH6vvwXsk1Ms8TKhPE3lE=;
	b=NEBqh7AaLfOS8heABMA5gU3gYp7ucMTRpLGysc1CRvMqOqkf4DYzOEYukUQXIfzM
	8Chur7U7kgR4XaYdWyZ0dfP60aiz6hSlRAmRASu7JjYJPb/yn8JXeV/sAyBQIoK5U/L
	qYaoQ5cx6kZlf9bvWQzTP7DzRWlR+OeS7o5PClIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651397398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6Z9cMOlRKa7mFBFGv7dUXyH6vvwXsk1Ms8TKhPE3lE=;
	b=TGjAZhaKUkyROx41s14JkRjfIJADVVRAHTAZ2jPp1W74+cyWa7AuUBoi3x3Vl5iY
	H7f564fEv8staUurmOEcrl/vpOUe0vkVv+xWdD8X2K9IyIr4aLOZDYUMvRID4ldvgSj
	BoWz649qrnkp7G8eLmObcipJ0iWQ/jwoFfkuVEiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ef48f24-7c213b7f-123c-42f8-adfc-f92c35d51334-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9218efb8d147bc22878aaa0616a10c6e03468167bad9c0afa4a6eab7cb288773
Date: Sun, 1 May 2022 09:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651397398
