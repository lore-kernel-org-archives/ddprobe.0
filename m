Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF114400
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659085252;
	h=To:Subject:From:Message-Id:Date;
	bh=mhILah1qaotW2mC5VfV3TwzFFKVH6rkBu+I1ZnYI/OY=;
	b=e79NsZSNe4pMjK37RgaS4tiU6Ee8zCFpwEIXCQcKdV4WHh9Wmeskaco/CBUl3XRN
	EHke7MWAe4bBgbWCUD7jOiXGzZTIMeH63FNah6+QJwtWa4ZMO8nlM4jcRczwn9A3E/C
	1hTB7Han9JneshjHxbWb0nGYkLyMkcZVMMNbhqg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659085252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mhILah1qaotW2mC5VfV3TwzFFKVH6rkBu+I1ZnYI/OY=;
	b=jIgSNQGav1YIfxJU1oI3e7tCMgfNTSPLpTglK8IKniLecfdwdON+GNjINKI1UNlS
	CRmsyFrlP5b7SlAxhz/F2aAd0Zm6/1pDL3AO1yKFfOPi2rTYFW0O9wtLx6Xy0v3x33w
	bwwwvaawF20ITReEV0tE8qpgFbv0tLAC9wRGjG+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182492fe7cd-e7120539-28c4-49c0-9f4a-ce77f750c157-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 048a4a82f4d7627ab1305dbdaeadb06a054c10b4b4ac3204cff3c7b1e9e2ce41
Date: Fri, 29 Jul 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659085252
