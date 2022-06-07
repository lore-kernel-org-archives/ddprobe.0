Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65637C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 02:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654567499;
	h=To:Subject:From:Message-Id:Date;
	bh=PGylMy5v0oYq411zvk/LulHk4od9moJ7Uq+zyTf4yFw=;
	b=W5Yuao6/t4Mp3o0ecbMbyg7UAzHbOiKl74vE5VMv1asZW1cOjOzKMYNXqgTEam48
	lsHFOQKE1vITesGUt/3xxtXTTp9dvM4XSYRpUUr7d7FqG0icFx7t2h5f6l+TCuOcN87
	DLyWVCUIidRvaIfY+JveAV4GnlwwSFtmmpIGFoiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654567499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PGylMy5v0oYq411zvk/LulHk4od9moJ7Uq+zyTf4yFw=;
	b=dZz5OXgxbw0z1Us8EYgr9E4hMLUHjI41YIJ9iIZ2kbERuAY1WRBcrcfM/p1teVkp
	GcmHOzpvDdDsVWn9PDv1q4y8mSg/3au4yNVzRqW/GdMeDHjuxPoccr2ezlJG36VVHVh
	dLvsbcb10gLU7ScXpWXXBBAF5cqDIE8ksCOFOo9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813be87628-edbe4c1b-c660-4acb-948f-5b365d8a736e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55517b13268ca09c03f805b06d3ea8c92f5dfed91cf2976179a20361b66147a9
Date: Tue, 7 Jun 2022 02:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654567499
