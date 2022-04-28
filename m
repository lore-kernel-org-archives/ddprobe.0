Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17FC136B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 23:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651187158;
	h=To:Subject:From:Message-Id:Date;
	bh=HwNW+pXW+eMwURLT2Q/NrM2hCA3tfUGGnthssMAgwpg=;
	b=OYSHZYvFZLRSEXQ08YyDPaUL0rCEuWysWV04/Pgs2klbiC3yTDbLUaibGV3WvFoX
	CSFTnHW9yp1iH/fMqTqVg4RHNe76KhGkTtd/bczPlednZRm90N51bRjYjN7F9dfcf/c
	CClAbH+6QoCohlMFVcYlGW2zBAM0+fRVNHusrXX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651187158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HwNW+pXW+eMwURLT2Q/NrM2hCA3tfUGGnthssMAgwpg=;
	b=RMaiOyoGwJeXMpmntSLtNlHlP4ZOxHj3d6bqtXyElwddUoYZ5I709micxHDrQoIj
	2JML5/WsIWBV+w+EKLKDvcRQ1/ZHQBUab2qEzpVBIqjuo/DEBissOsGID3PkErIxx4j
	e6f02HeklUx7qjNNdJpvgE+DW8HoD+LGlB4dEBsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180726c8cf2-413318ef-6a38-4bc9-bcd4-ee443e2fdaac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0689f901c621bf368834a22e6b5b6f6a2b1ad48c4c2b65cbea8bca1bdf8379b
Date: Thu, 28 Apr 2022 23:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651187158
