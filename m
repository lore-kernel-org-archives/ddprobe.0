Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D8F7F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 09:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654162079;
	h=To:Subject:From:Message-Id:Date;
	bh=7+t7C1BHtJE6tIvSRPW97gcwlANFuwu/n0CLMaMA0I8=;
	b=CK3oedD8TkAXzgeOJYHkyl6JeBk82ptqm+rs1rZmWrs2fiNWWn+a32qQDcTU/bis
	0wFiVQhGsMYNz+Q5W+GSCcmcm9jyQI1m+LknWbMZUzYEcOoTajP7qt4sTgbfZ+8Va1T
	tVYJmFjLNzcTPLdpA45gpoDCfF4uK4YR9EJXtSb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654162079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7+t7C1BHtJE6tIvSRPW97gcwlANFuwu/n0CLMaMA0I8=;
	b=QvargMZupy0mMh3Xkc0GQBh3VFPRwYyghwDp8f9apQG5zt1rRoVstwgGrOsVd7WJ
	V1tnHIMssGL/8MeKI4UGh47RYtzfJQx25RIRUL0RcZ9gbpkF2kDGv57PHtncJmX1Cjv
	G3QINd4TtIbSif5+V/Xng91J8UN8E0VsD6Nj6mp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123be3e34-717b0914-e814-41a6-9c4b-928247d64ddb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba3057193632faf20e90d831b4271a0a41ad6250d82c7980c2857418e231cc85
Date: Thu, 2 Jun 2022 09:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654162079
