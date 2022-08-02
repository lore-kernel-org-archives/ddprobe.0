Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2EF7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659466852;
	h=To:Subject:From:Message-Id:Date;
	bh=++iu42aCuFx2JR495nKKwgYjV9x98grucNngliB3q6E=;
	b=dc+z+6g59YEDuYgdqg5S+/Ni0auXQm5dO5/Drz354BoxBtGjKYHA886TCy4spfBY
	2KKb7gNyIBL7LC8GsVzdPiogaA71TCCduWCxJGvubxhQGcWpFi9QcMaS7xxgDyzO8qe
	igdmuvNL6/qGpB/6nji1unm6SeNjnkibvK8WwoBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659466852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=++iu42aCuFx2JR495nKKwgYjV9x98grucNngliB3q6E=;
	b=COH6m8lCFbPfkrf94/zFS9mY+xp4fnFVziR1HQkuE4hqPosaT6S4FsiMDa3iEgG7
	UcnlUyhJPX+pF1Wfr7rvnvogFp7whbXCreyRLtT0Vk5ylhrgyILvO1bIG2sLvcXcOOI
	vcI8ATFK7CxgNWNq8eLLmdlJpoFY9Drmlpz/MdRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825feea90a-b50cc229-0701-4256-8e1f-9acb8af863a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee0bb4f34ef357f0e83b6b015bd1565e509b09e13ea25500a9141ffde990a708
Date: Tue, 2 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659466852
