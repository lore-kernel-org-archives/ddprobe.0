Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0132220F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 05:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652419439;
	h=To:Subject:From:Message-Id:Date;
	bh=tzoRzwdN6eTAYQJSCxNGM+rNNhZX1H5lar0wuDPI0to=;
	b=clvOTh/E2ur8uWIR/hWJF/X3Y4RISKa/110p/tgyZxPHfkdVO3M6k+Xo3EfcLjx8
	GzukVE/q+Y2VgqPvKmvZ+S4GaNHadt7vtH6sJTAUGOVYBZ19eMxLCVjm8yLPNzVUfNx
	z/vhUFpHSLyq+LFGfu38ekrffCn2Ah+6KXYkzpgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652419439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tzoRzwdN6eTAYQJSCxNGM+rNNhZX1H5lar0wuDPI0to=;
	b=SveiVWmwn71AfiU3ITjD67Myfak0xT62UOUn/7Yc8g8t67trvDBEnLwTLZT7U//G
	072iF9ESnxJJlom7fb/SIxG5lw2l3ZPyMbQqay/C8p00cjRg5vz+ZqNakxckdEPZ+ZD
	ujSLzRJ1Ou3IXFzT/whStLgfDZO6z+CC27GFIsKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbdfaab7-76d4d8ee-2d14-43e8-adb4-d667277510de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bf8f3491ff52f7cca5629f9aab36e82a3893618a04932426123ee2c5bfa27d2
Date: Fri, 13 May 2022 05:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652419439
