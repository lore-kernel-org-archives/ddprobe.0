Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C45D371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661069452;
	h=To:Subject:From:Message-Id:Date;
	bh=wSgkJLxDvIqbBcpkroO7MMGdwRDwc2NLqoVsTKdnrAQ=;
	b=AJxT/d2gQ0vpLuk/yeojx8C6U3mIWpjYIEJ7DlcsyjoUiMQTEVeQ1IrJ4LERC4vo
	jN+8iUehgj5qf+2MtCDnosiLsE6ICZvhVCsiCVTay0BgQ1AP3xmDSDpfvU9zk67MFWk
	E1RmJOgq1rPmKjxUA7RToP0Dsw/FncIACO/jFCvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661069452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wSgkJLxDvIqbBcpkroO7MMGdwRDwc2NLqoVsTKdnrAQ=;
	b=kkJ4TMV22+HgkhqqUFrT4wMLMnwQ2a3nN8kN5wwXXASzAK7kUB7rgEI97D3zoC+j
	dfOvWAMiyKIX0oJzEz/G0NK+I5c1Qgwb6gilYwAkSTzPbLPZvHFNIE9FXL1potp+toi
	P1wE7uV7YjujYERyKwVYzp/OhvU5JI69tG7AabUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf746567-133c7b50-f3f4-47ff-8a92-4078254af569-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d2e3f75169d7c8cc9ae213ed178cb17cdd0ed5012f665098ccc550dc0a7e8ab
Date: Sun, 21 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661069452
