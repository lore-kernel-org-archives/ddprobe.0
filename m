Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB06B46BD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 11:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650540418;
	h=To:Subject:From:Message-Id:Date;
	bh=rOCXd+5TxA5MgIT3IDEu5ZJjN0WPuNnhpDVDfRr4UVY=;
	b=c9v/Zo121ZGoL016xWhBiQ8qUOd7+6VTbxyJTw1FO/mpY8MBOvVSAkW74Gvb0gmd
	RyIhHOsdVu93QReXrb2zRzPKhunAzWyXPEA0gvKnSiA8/l3/p1xcB9xkh8ioG6uEpfo
	Zzz68XnrgKgnKIkDekpqHAU7s9WinJsrszzCR0pg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650540418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rOCXd+5TxA5MgIT3IDEu5ZJjN0WPuNnhpDVDfRr4UVY=;
	b=KMYC/ubaUyzSJQlzSAqQA/du4uIFWDa+BQpIcRsqLD9Sp2PDP1kJeqq6WYALdtW/
	+fh6TzfZA4Siik4TFPrhAeSJp4IMpSRAfIBtx5gb/W/4hDjbyutY/CfFjhiMjd/i+OV
	WIoVu6p0PbnvBzZ6/Qjzi+i0EHX/06UEUophDfK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804be014bc-189a3b80-e3cb-4351-8b44-b92f227ee7c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6305a49d528eeb486e27cdfdf7a6d070ca6a2c812994e424fa0ee2166ad5e680
Date: Thu, 21 Apr 2022 11:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650540418
