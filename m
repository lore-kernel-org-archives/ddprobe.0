Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D2A7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 09:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655629439;
	h=To:Subject:From:Message-Id:Date;
	bh=O9DpIOCefxoYG9xpdr3VQg42bIlXNd1YxvOwrxo8BsE=;
	b=VA9YWDYPD4qU3O0NjObGPdNriZL63pYA1grncx03TsyYoWjMKP4nu+U4Mi5HApPS
	YhlACV6/QpJpClRXDr3pm3vbknRf14hbsj5jWua7Vq+qCcXdi1Fq0H+GupfPW+kq193
	2bVM09ZAQLbX0sH4l6SHa6SOl2K2yuvTe0xwsZbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655629439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O9DpIOCefxoYG9xpdr3VQg42bIlXNd1YxvOwrxo8BsE=;
	b=LSCjzWdk5I61qKsMb+zACKdew/dOyAD5VEBNXIAkJfIw2wiUQ0TGReT8xzfByk7f
	a3yAYjPpPTv6+GE+Uv4zNk74+T6Otzl4rPuwBtoFskjle6vgIeX0fA+5BgqXvzvRq4s
	kVdIAvtUeP3aTwfiGTAoYW3ZGGseqVUi66669ebI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b3460e4-168be9d9-c9d6-49c2-9a5b-9bfae3201aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe574051020c7a7a068d08f1e178c243bd52be0c1ee14cdec4f55b9568afc054
Date: Sun, 19 Jun 2022 09:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655629438
