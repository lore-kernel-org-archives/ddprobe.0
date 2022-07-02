Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141351383
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656753412;
	h=To:Subject:From:Message-Id:Date;
	bh=95jNdd/luFUPiM88Sf3t7elpG524u4lTHz1KY28P+nU=;
	b=a8/HqGdMBNp9N6xVjELrnqLImpYobtm0O9xSJXFWkuCgDzJvuPtUhM7mOrAdP0LT
	0GQiudw4hRWmAAUSK8HhL81IR2C4X/6T8gXzjIs4Tgf4ZvPIoLam7h1PL+xsE0pl1Xy
	WpCLaO305xGi0SZ718ZQV/wwGB6B4WpeRJIvDI9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656753412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=95jNdd/luFUPiM88Sf3t7elpG524u4lTHz1KY28P+nU=;
	b=VK2QwsS2+cJU+omAZ4pktWb1ykTOB/vZY9ASitLPa+y65/gOH5dvK5dxNwL250OC
	XeGYVGYmYHi7vioV4hs7OgWYb3b2oUMWd/Z4fdLmj3/vsj+h32tTHkZpu6BDd7DK2EZ
	synhMsaFYQRZ92s52vqOPYEoiO1hq7aOcI3JfI5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be32d8e0-3011a7ad-4295-4d19-84b8-b81a586206f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bfce9acafe514b13ed5d91ad868d6a189effce4583927ed52f7ca15d326b33d
Date: Sat, 2 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656753412
