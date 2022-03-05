Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FFF7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646476284;
	h=To:Subject:From:Message-Id:Date;
	bh=aF0Wu3jkWI7rp7dV/5ivNxaAcqJ0whpolcUwyVJxwvw=;
	b=GxU6yJW0nlV7OfBTxoEVmFsxw420DamTi3yiZOY35v+bR8uEzWiVSiRQRxySyAef
	3ms2o3ZJOniStqpPpmcZoRFUwZZ2hKP5S4yrRDD9VEV1rGSzIt+e/yv/fUPt+VJHbZR
	A2sJcbiJzywll1twg5aYKJDmqsMfZp0Z3v53z+f0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646476284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aF0Wu3jkWI7rp7dV/5ivNxaAcqJ0whpolcUwyVJxwvw=;
	b=VOEdmHUMjSeuX7MmU0i0UnQAfPuAXaUHrh4ZNDsuPD9+UA2eZR8cLYJZ2GNGT1vw
	xdzK5c7R8SveUTrbVH0rhr/e2ette039NYz7YMjkw6Y+vnz8DIlEP2tcN0/uaF9F/zB
	2EfYkQbAHXB5zL2d2U9cTMupmZLLLaG+Fn2i09nM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59a25354-54bd8d60-7c57-4c3d-a953-9f112c575c98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98daa36a75f96adca15af41d225a868e1c041cd2a4fc96b8fdac7aab6a06ebcd
Date: Sat, 5 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646476284
