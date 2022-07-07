Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E97367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657167412;
	h=To:Subject:From:Message-Id:Date;
	bh=E04oyL5erncCni/MD8xnX0Z6q1zuqHqGOafAmAYqhh4=;
	b=a/EReoXfc5dKkRcNL5LCHjqq0wCC9LCbQeU633ZQHz9F2xFSY0Ek2HwQpZ1Cmxev
	d0N66V9ejdShmcTEUT28rU5AV0BgA3U57ndA6Pyh4rHCh8wtq28kfFER0Xd3H7SP15R
	Q8mtoFgTb5SjsW+GTP7XSP0NR9Uulo7YAfG7eRjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657167412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E04oyL5erncCni/MD8xnX0Z6q1zuqHqGOafAmAYqhh4=;
	b=bL/ohPWwtMOfHMTaI4ofh642uL9ciG0OjpAjkREZcN8UoNldxUQ6/4ZaG3qjwScN
	WAydg/iUfAklODQ6ilAaw2KGaGk1b5Pdjlcp8YCZ0nwWvfNiAzrqFiQiPjdjnRK6XjE
	rqxU7y65gIDdvckZUIVRFe+JXyog50S+mE6o8QGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6dffc44-61bdd733-e874-46e7-bbf4-0aa82dd75dfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27cd2716fda2fd9152d3f8b82252f462291a268995645a16b8a2ffe6de8f5df4
Date: Thu, 7 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657167412
