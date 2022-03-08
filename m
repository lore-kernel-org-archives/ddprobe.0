Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665407A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646726184;
	h=To:Subject:From:Message-Id:Date;
	bh=28VZHZSPIYRZh9DYQ1VvnsufZ8gVJAXrefInJLSX5bA=;
	b=PqxSxLcfabSVL+ClpHASy9c81M67zY2eMasmwV+tek36LbyElA13G6APJtBcK4gr
	/4URsbOUSz0vdIE44pk2yo9oP4M/ZIjkhFtFxDB3Vu+S9nyV0PHGCcbewjSp7LE2RV3
	pSg5zmcRoLkNIksDuUDxI/MWxar5q34muA65DxJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646726184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=28VZHZSPIYRZh9DYQ1VvnsufZ8gVJAXrefInJLSX5bA=;
	b=U3KqBkG+ol9zb2aaYQYEBiyOYQtLeMejiqFyt+9q08+dC5I75tfNPvBe2csVkFmx
	pYOxTTXQWvNXlSULAzzvO5kXsB95qTS3IMkLBXcBCQi4wez2g6XqPtn/j5MMXMblNfU
	heodZQKvcp3kM/IUAYHSgqmebfbkV5/7Pun/pkPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68877f15-cdcf8091-2000-4080-8f61-49c3e825078e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea22e963750f2b76a8487cbd8d193642b48626211d7fc579790849bd86228a7b
Date: Tue, 8 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646726184
