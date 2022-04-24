Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178013201
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 23:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650841798;
	h=To:Subject:From:Message-Id:Date;
	bh=ldQSLzx/7VnWuGO48VKIttK+YIFNLn51tTljosQNrcg=;
	b=MgDlXpE/LzWrUpx6GSIS9CZASjMU15f3iafWgN4AiD8Vl/JZKwmz+KaRwmmEJ5x4
	yXTTQSCbWsYc7vjoLHimJglciFHs+4j5EfOfUsnv1dFp3UGWqL9AOcgYWZPSai6u8hS
	5jwHYaxVp3X97CgJC7Fw+djq4EWqtrLGUVD+F/vg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650841798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ldQSLzx/7VnWuGO48VKIttK+YIFNLn51tTljosQNrcg=;
	b=H5L88sqGKB1s3mvMATt6W5tY59JCIihvm6HOR9e7NKw4spqZLsHh6uBt7B/2oarr
	QWU6X5yGnCBY03mK7WNrgos+VneK5RQPFEO5iLiGgXkyHK6vmLSudealn39Yi3U6+oa
	LjI7SQLvWM/B++fFWXVZaNkdoNxEnYRxyFfhB/OE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805dd6c6a4-821ec53a-4428-4a31-a2ad-6b75fc7ec79b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f4f33f201e696d7f3e0284bfb95d1b3e39cbef2b97dec5d5ee6e27f13b419cc
Date: Sun, 24 Apr 2022 23:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650841798
