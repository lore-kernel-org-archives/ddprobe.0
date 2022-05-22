Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E135320E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 02:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653188099;
	h=To:Subject:From:Message-Id:Date;
	bh=CH3Zj2qHtS7oeZdPPVyJGvDnCHp2rMYDw7YAgPyvK5g=;
	b=gSs1aXlVW6pF9+Y4Sf386TJymFgm9LFgMwbDDSOb4qTQPeebp34sk6m/LcCQ7/rs
	tI/lF3YJcDQ3yMVZCh+TFggh+w/O088y/Vgp4PcbYig9W8Sr005b73aQOMUlFNQYZtp
	TAmg7J144mGrsFK3cI/F/RmqKQdPU5go22d0n/dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653188099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CH3Zj2qHtS7oeZdPPVyJGvDnCHp2rMYDw7YAgPyvK5g=;
	b=gc1YW4MzyzQ94lAAlb5ZU0Vz3JsvJOwzKAD6psz2ygUBodwJ2knXnbcj/E+rHuEV
	sP055BXqVYMZ0JNutgNQZD5AL6ZMJull5BKl9WFqNdE0fSnhSjrOnjppp9Ia9+Y76Pl
	sDelbNReBlEl071x0dK+3zf16bvOUrVuRSxRa80Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9b07cc3-2c601649-f345-48d5-9150-2ce8bf7f09e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffa63e6f40b8c303461ffa15b1599bd391521732a9ac01195773a43bbe4b180f
Date: Sun, 22 May 2022 02:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653188099
