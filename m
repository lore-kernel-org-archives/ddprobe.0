Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801687F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659425452;
	h=To:Subject:From:Message-Id:Date;
	bh=NPm5kvYyKEayNoJd94zKEHTLZWKNCiiLjpUzugqHyYA=;
	b=CMnuPVJOy/xXsDRw5qQJxXSWIwrs8XKBd9S5mSxCAIGa6Bh7N7FgKQJUREDi3CZZ
	Tmfz5xQfwLWWhhYd2qDcB7lASjMam7JrNz+WSVCTopTGu0PAIAvBR8CHejHcbwbLdqW
	oUa/eyu2nPQOKq0rsf3XQ2MaaMRGNIT3nRqMRkcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659425452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NPm5kvYyKEayNoJd94zKEHTLZWKNCiiLjpUzugqHyYA=;
	b=iHbBnHVIWJLYE/Vg+A5SHl3AoxgWiQyE1lKTMv4tfnoe8qbvTyOy8A/MEBWqsCKu
	CsFN3yf4Br+6DXftSbNKUS2ycH5aksn66PSIxZQ3Xf2aAJPps/jvV98TIlC3ehb6NsQ
	IQNkEdioM2QjVQTbKi78e1nywYQjjoq1Ha764uD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d76f24c-1f45deeb-5f23-4572-bab5-0e718539dc06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 875e0798820e88bfdc824c75dd74212a3af908248ed5086528eacd3d2c687022
Date: Tue, 2 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659425452
