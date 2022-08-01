Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4087F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659372052;
	h=To:Subject:From:Message-Id:Date;
	bh=OQsmNvbHcjEuz4UIAofUCtwrHD3XEFSFt19hG2VZPAo=;
	b=Jl2+VcmoFGdMgMIsvGHfSniRojy2AdT5CDZXQ/GrsV0k+D+58uaHcX9DF4Tpr+VF
	uHAuITgxE166sWQf4ho7JtacPangOEd3kaO9YtoehXPJGpK/1kXxiJmhMGnXz/dCsAA
	IQYufeAG0YBEJ0CwyU3Lxawk44lcBRV7q3HLOP5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659372052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OQsmNvbHcjEuz4UIAofUCtwrHD3XEFSFt19hG2VZPAo=;
	b=kcBLT4srqrPAmnyeJRxhc780MdVz8VTELHNEEgqaux0/vcTGhKL0g47mLlx291C4
	Olue+TmX5zZCNIU2kwJ2MgJuOZVLpnjKsxut5/Uiv0bbfneSXTb8AY4qFHb33uLNcZw
	AhAZfps22ZvHRQLBYpv7pWIZ0GfA38sAQuRksFLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a482044-d8f37d1b-7cd3-44f3-9292-0feaeca25e29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b9b5356f094f0655140595cd86aa4af39d57a2b39f3e466594341c7a0190de3
Date: Mon, 1 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659372052
