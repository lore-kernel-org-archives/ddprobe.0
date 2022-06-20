Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFAA3D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 22:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655763959;
	h=To:Subject:From:Message-Id:Date;
	bh=0RtKlMTZDiuuv86WYgJBUZhOjrXAYtNE+95TXhDuJkA=;
	b=DueY7z2xj+EvfvpyTD50oMSS5evfFZ9kIy2ejDENIQ7QTPstK0NCRI3yLmlR8oft
	JNbZMUyAX/eJqffKPQrH1znXaCZNc/uHhbGfd+BCAuh83wMoiXE4BbGuacnpvHyYNew
	DRBkKM/992rmz3LugXl+pTWUhbuE+x08fxceWOvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655763959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0RtKlMTZDiuuv86WYgJBUZhOjrXAYtNE+95TXhDuJkA=;
	b=hdxOYSNY2pmSVc4DUt5FB6IPlgmeZ2FB4lJCU31dyQgg/wK6Y55BqIQilGfOyOzf
	GCM5cyw1rzvRcdnR2VGb9AI+0k2pgc0o6iJTEZgO7Cavf+7SkKEwb1uH3OFIhWZD82W
	95G5jUlRXYVFFeEt1M47jTFHdpjeM6/fyeOPnf1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818338fdc1-4e7dd9b5-0dac-4320-a541-3c97b86678fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31381fcf806abbdd60a5c9182278dadc1e76a75c6b95acd89235838c7c3c960b
Date: Mon, 20 Jun 2022 22:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655763959
