Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2693A36D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661054452;
	h=To:Subject:From:Message-Id:Date;
	bh=dmi3XNUDsnWwAaVAn+jQvpGxVMpLohCRmAVBeC+pNsE=;
	b=AxsjBCK2TWZ7LC9HoF1oZWOdDpr223A7O9uxa/wXFLTQ9+/fCyop1CVsVh9BN3fd
	N9S18QazS4qJvkq6oMi7cGY6yooUTXl6i3Y2h92S7K6Fm7/pyDxCtMZjyXGBUzh6nch
	lFxLfqOEcJLdJGHtKBkrkfTK/pm/BsvX492B6aBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661054452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dmi3XNUDsnWwAaVAn+jQvpGxVMpLohCRmAVBeC+pNsE=;
	b=Dle6bjYhZTGUWB+6Ic6Fj3fFv4jCNLZ9c63E/afocY8HnO0Ok/Cmh+yLI190yAp9
	lKcziu33blt02HpwOz1yf1Xb9MCjF6BPL3ns3xchR6n4y7Tt8WEncUCD5rvoKY7L1Lm
	qJ7h0vyBRaxuuZSjLIxJHwJx3JX/SoQSmQvy+VAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be8f833b-f7f72007-b1d9-40fc-b58f-de0ab32f93e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9265e3836a7d74645b8ed419e678c7cca077d47b40e07aca29ea382bc6aa446
Date: Sun, 21 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661054452
