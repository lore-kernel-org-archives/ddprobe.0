Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4F87E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658612212;
	h=To:Subject:From:Message-Id:Date;
	bh=rXQ+fzopkc7qiGrqTe/UtuxZIUqQ+QEoF4tZyLqPvj8=;
	b=CKd4pwmJU81a2tS2RU85V5j0nwAwsR0OcxWGg1FD9r45r66WsskpbC6CwARg5eFb
	OJVcBkpIUt1oon7j5HG0Z+z0CcPEyakBysAza07E5/7oex5U+JuixL1zMknBVBMmTYD
	OCgFWgfU1qHq65fvStmx1Bi7nx6wkn9IFZ4Q5pmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658612212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rXQ+fzopkc7qiGrqTe/UtuxZIUqQ+QEoF4tZyLqPvj8=;
	b=fdMu+tYM0xPAjhoF+5neXY/egdlavE4DhSYyjEocfDq835nQ7xD//KThKQ/CMcWm
	N7ToFHfnSijoUxDZDQR3u6gApGnH9rfWDTb/br77lw8kckZQ1dX43OPc6iPqQSwdsGp
	+QfcBfXvPzzfXBzwG/WFte/SESzBbvqImw+WUdYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822cfde230-a92b79ea-6ec2-414f-bfb4-2ad67221df98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42647e9178bca7b44d7ce2c0c92d632a3c448c3d6bda7531838470d9a7fcc2f4
Date: Sat, 23 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658612212
