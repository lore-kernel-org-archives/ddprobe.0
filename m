Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056D9A28
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 01:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649555698;
	h=To:Subject:From:Message-Id:Date;
	bh=0p9iYZPSxgQaUP2HIx0crwrAHKCXhcQnfBu3MuHD+Hc=;
	b=U7PGXotIrd6q00KfyDSpjcg/mBi84SLqFaZ9/ZeASLxQ2ZBAAxa+yccY8ytVC7HH
	AEtv7zuqrhcsyTqJk9JPTCDONlFxWSWBHi2e6E6Ju+/rw+gnN2SzMT15A2bomiu0E4F
	k2a6au1AoXp3kSkYfr7o+JhRUklMRG0aoualqpq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649555698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0p9iYZPSxgQaUP2HIx0crwrAHKCXhcQnfBu3MuHD+Hc=;
	b=bN7h7koImILII6L5ju7TclOTtPxl0LBfoHBXTc4b9+e3Iv1+nOvKNkMDU3IdQk7x
	zw47ihaOSeL8CiySR7PMMBZuWC0aNMvk3kcxb/cWZPfYq4cxYlSqjLgT8yX2kK0cv1D
	T1ruMyBTm4pa36ergf+vQsCYnKNKdlN6leQYLukY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180112e727e-a3d59198-b83c-44fb-a011-d4d3f966274a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 001644b50fe69f640db6a45417ef86eba9bfe699f94581fb28f306d9b4fd91a4
Date: Sun, 10 Apr 2022 01:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649555698
