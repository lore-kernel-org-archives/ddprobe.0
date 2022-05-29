Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583415A6
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 05:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653801239;
	h=To:Subject:From:Message-Id:Date;
	bh=C8aeyqutCW/Ryhp/NWrpOIorJtKM+V3R8jIGobbs8Dg=;
	b=ZwADx6hv2ib6EdAHEYwm9wgexFhOFVQLxsSerhylqvTSIt+HkwQvXBzOTDk2lBcw
	CQkb11j3+/eGw3aq2DOH4wwJHBg4JOaNP78gDiifkuMGBtJHVSbH8jEo9/YjySHJrMh
	AHeU6mZNzS/5DPSDhQWiByMAHe74u/EBEs95kU58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653801239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C8aeyqutCW/Ryhp/NWrpOIorJtKM+V3R8jIGobbs8Dg=;
	b=IBpAwz/1N2HpfTzAqNWRlzUbNfALkRkQD2l296Evncd7MggkZgeyjev/J+5y5phK
	rGTNb7r0NSGFKVALYFVif5PHbkR198a7/R+nEEhU25sfLhIyW/gAoZ6qIxJcw8SfA57
	ua6pS8kjk9Erve8exwW/hFKbx6fkDusHQbk4v9C8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810e3c42e8-b2f54f78-a0dd-481a-b5ef-f9fb1989bd51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4f9893dce1be8906831fb52ca1b4a4b0e6c685f2b4bfa798442c6a1bfa236e1
Date: Sun, 29 May 2022 05:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653801239
