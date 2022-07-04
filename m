Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E4615A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656908212;
	h=To:Subject:From:Message-Id:Date;
	bh=2u6Jc48woWcsfsCOV5VmQm9YfyuRzofZ9dxRpUROMVc=;
	b=NvGTB09PvhJ+l+i+AbJ66lS1zWOHXGPtDaE0dhFh4KwaA1douUEEpWdNz59jqg5h
	C8GefYNH5YCXG3Mt3OIi5aAEHY2M5pkWGNYC/a3Je+44p2oy+rUy17xsihVib7GbG8Q
	QKgTgMJeuXEL6uOgKoOzvEGgC83kkc+2Wc59DwNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656908212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2u6Jc48woWcsfsCOV5VmQm9YfyuRzofZ9dxRpUROMVc=;
	b=AVmqtvkzQV6YHNCYEOpEJQ/84Ky+znmkJNNHo8e5h4dBtsZ8tNBnFmiwP9vajeTV
	B/FlxcalkKcyWseeU6AnNChR8IMqJDgFFlb5UEOuu9Jg6bw2DAr4kW/GyQlCfX07JtB
	6GHe2qqvTHT1hoYUmviZ0zduAjTwWGOXoAYG2itE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c76ce881-212afa7d-33e3-42a7-8401-6fe5dbeef9c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 761cdf95516b354e0c16702f94e4f12789517895faababee35f41e60fcd69cf3
Date: Mon, 4 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656908212
