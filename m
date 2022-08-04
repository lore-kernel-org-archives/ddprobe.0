Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8FE7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659603052;
	h=To:Subject:From:Message-Id:Date;
	bh=v9meoUsutUVronJQ0QkgmLOj/TgBZ4C0DlTEmdYSCEA=;
	b=cSdN3Vza7IlCYtW9vLfBSZ19C4FwXLNgwroEXOa2zfKI0UYcKPbDCn4QWUEv7znu
	bpWBW7oz+7eDt/isb+GRvuyJ2LgseN0K+F3mNl6JIN9KASdfgXLVHxBNSPq1HhIq5Me
	qz6oHlyrOLj/iPbwnBHlIYAZCcFk0ecO/bfuRvVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659603052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v9meoUsutUVronJQ0QkgmLOj/TgBZ4C0DlTEmdYSCEA=;
	b=OLvMMh+wd1lajIwV4xlmDxRZnVyG+MneTG1mS8U/z+92W0cbC+8cxIFESrjRiioZ
	cH3rzE7BLbrhrJJagOfW82G5zT12GElp+7Ayxupo1bokRG1ojyBuEBUknh039m/UiuU
	eQPw/zmwxVYgdl9j5yWZlAtXEVfn6/ZEyUqAXnqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182680ce849-199c8b52-e4d8-47b7-a083-1ea9d1da8d2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd242bf65e8382aa52170e5a8b2d02fc4759433c20bfc168cb9bb065cfb60a9c
Date: Thu, 4 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659603052
