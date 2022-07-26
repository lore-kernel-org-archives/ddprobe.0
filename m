Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07158624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658798212;
	h=To:Subject:From:Message-Id:Date;
	bh=k+M2N5NWHDdexcOaRK5q/ps7q/R7k9JMny9apWN0v40=;
	b=K9Deu3hYBHLIbuIL07rdqevgnrMQ9JePuuJvD4OPWlFvaqeJESU3xJ0mEI/OPp8b
	/2mIOQ2KoV1pax3GMxK6bHya27Rkumlj7Ev0+PGqz8wObhQBQL38+7jwTSa+NY9zn2I
	GLcyyVTu1JeFOqajwQXj2LolnxijwnFV2/hg78SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658798212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k+M2N5NWHDdexcOaRK5q/ps7q/R7k9JMny9apWN0v40=;
	b=bgfi82HdFG8TF5BeR+D794ZpRr3vk9iXVJ+VN/PCpa5FBEmGOjabfuf4gt7PCPW7
	8CWs1uWNR5ZcaUci9ZJLbq689dTDtettTIMp6VcE6eCJWwuJUUSkZlm6LQXCYw3/IuM
	6TkcjQiUv795UF1jjEbQsvSRyGM2dCSpNsVgTWq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182381404aa-e0fe3778-2421-4863-9483-c985985a8de7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c813ff91eca2713d439dd6d36e7ad7b60888f0206cecd7203487bacd5470b711
Date: Tue, 26 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658798212
