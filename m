Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC68EA42
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 04:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655009939;
	h=To:Subject:From:Message-Id:Date;
	bh=NHuRoLcSOdRzGgm4cU+Y3xGOv/J98381ESMvFMcIWqM=;
	b=bOSqj+YMglAVANgdGVbEUXniZXARfTv+ZPYJnb9TYr2DBPIP+2mYjg7II21pbo2f
	OQh3ImPdN/1zJvSRsYyX7Hya3/qhxNK6YBRCR1jEvmJm1W7SGystQJcCfJWrO7jZDTN
	yDkVYWTRO5ODT+lvw7Ki8rUtWVgsf2nmxY4DYybg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655009939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NHuRoLcSOdRzGgm4cU+Y3xGOv/J98381ESMvFMcIWqM=;
	b=hTUvkjO7tKE4IX5jYAnySHOxmShQv9y8bL2uU5opeDv7+1vXO0wx3wxwIRsXQ+Ka
	bO5xZxBi4BPNYnUWtkxgoxdhfErj+mJERfECuw1CRTvfe76Ul7i16ukaIg8+TeO06St
	Z8nQouSX7CUnUapx5AKZTvsiBzPuawrmyAR4fmoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018156478f3a-ffc69d37-da48-4e62-a311-17361c8793f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38b157b2848fcf839e11f793c9495272a8ca521cfab8f0949a8d3f55ae3ca395
Date: Sun, 12 Jun 2022 04:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655009939
