Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BF17C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 00:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654473719;
	h=To:Subject:From:Message-Id:Date;
	bh=iffGidLdW/b1NU8V34zrvzGHUOhMUTVLW/4kFOFuZf4=;
	b=UdcGGB0PrwFPEp2xlZ84lsgejoE8UKxN3Wgtr2BQV8iLUZEKAuqCYpFvKYIHI9jF
	RkidoCvNywoKMFyePonEuz5n8Qb9v2OHk9UccJprw1Mt8xe7vwXGeabDPZPyzHKNR/L
	9NZM8uvmR373tbYo5rJpF6M+a7NMnBbbhS/2ePYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654473719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iffGidLdW/b1NU8V34zrvzGHUOhMUTVLW/4kFOFuZf4=;
	b=Hd8fBNKek9o8Zx2o6QC6IvBl4Ej+Pw4x6Yf7haRWKqdtHlJ9Y/xW+q1Ba7HMq4Je
	Suy3MF3vooleqls7IF/9VJRT3L01bv2eh0T8AH0o61y91J2bRuuS1wKevE6CcPcb4hC
	cGT/GdyojwcGkh3HVnIDwbZ2UjfRBWv861b6w4aQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018136517e1f-7c3d835c-e865-4fb9-8486-22d7d9976d0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24fc6aa2217f52635aa6e5c2f670a60c381b1da815cc6af56aeb0fda65d8221f
Date: Mon, 6 Jun 2022 00:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654473719
