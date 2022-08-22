Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422BC4A3B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661201452;
	h=To:Subject:From:Message-Id:Date;
	bh=EDqbvwAnC44Ca3GR29cYZ3fMhLZ14HuOGzyNx3zog6A=;
	b=ImPiKy1LC1IFWI3s4FBEsU4orPMDeObPCLvjc//o9DBNL8hV5IMSZSliaSbhhtTr
	+qHtOr2JPgoJcZ75KzEE7GJOOZMAC47xz/yg1tdxFDZ+mIQ8u0rCFdmwPeKkCP9EIQy
	wypLC+UZ38EcpgcbbmNS47keQqQ2woSaJ7ZlbvEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661201452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EDqbvwAnC44Ca3GR29cYZ3fMhLZ14HuOGzyNx3zog6A=;
	b=Hyu5Utm9Tb1cLuIJsV17Lby12Nj+0OW8NUzLXzNy5JL9Q6n+y1eMcG9wlN0oAlT2
	7su9gRnPGses9Fu/bDdjVV22mPsAVCVe7vgsRZAS93nwsWo6kC29ipg5OqGOiDOxciy
	MMHgcpIxP34wQ5sVzr3HUiTwnOUMdg0jGCHLeHOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7528e07-47533540-fd3b-4cc9-b261-0c22485246d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 028f79c26f4292c14982e9895e8d71ef99e7b92ac7cdab1e9725fcc31b12a01f
Date: Mon, 22 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661201452
