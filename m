Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066E2A2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 03:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655002979;
	h=To:Subject:From:Message-Id:Date;
	bh=keJH5XduWtewTPvr366d+XWwYkT2kKD7zK5f+kPvg6Q=;
	b=Myd+p+W2iv4OsxHiRPWHuaGSjOp2ch4cE5LFjF8VnMBzaE/YKbhSVvQFwYsfYtaZ
	U9qVc9NmwT+dKhvXORDtbVD+zmQz4OBTGIjHGy6op3hdEFVsfSuGB+jtth4WniHMn0Q
	dxf7TtCxFhpQ+sf3BQ2vnhYDT1nDIcZH0EEccZ+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655002979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=keJH5XduWtewTPvr366d+XWwYkT2kKD7zK5f+kPvg6Q=;
	b=Y+MQZzPR42WtpgrrsnY47XWpovuC/yD7/xH89k3GeCFjDaKI0pt0m1TC4pjJojYI
	GI9VMC3NSGkORINopi6gqoSebVd4fAOBi4T8Ss+Hs62gDDKcgGcDOgpiZE/g1KWEH/7
	/ScJzOaFsTlrtNg4lr7Xlb+i5pdVm9xtFXqJ9b/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155dd5be1-05b85011-0f9a-4353-bffa-57f5dc4bb606-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 419deb528b6aa020f8a5302704deb60fff41466b59cacc92a92f673e0e12ac71
Date: Sun, 12 Jun 2022 03:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655002979
