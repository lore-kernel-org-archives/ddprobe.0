Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D55748C
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660944052;
	h=To:Subject:From:Message-Id:Date;
	bh=bD+xH5W5jNpL4/oei21ddop6OHAbswhYUh+H0TQN5qQ=;
	b=hvidex7ExZpdanc2UMXYGe6MJ1g/APhVrxxtlbxDjS7YrTv3ubIf/17KHvfaDBFQ
	YfwgkuwEZHX6Hs7yucGkfiXI7lPBnunCtno3i8J2NgVSZq/ZGZVX3BD0ZQr0I4gVXKS
	O9Y0CfIiuYBOXw2SY4sZQ2QtRGkLgF3tYyMfm6m8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660944052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bD+xH5W5jNpL4/oei21ddop6OHAbswhYUh+H0TQN5qQ=;
	b=UQqwg93rpsIVNC9fsmgvQx7EdWPO+1hs66YPQIms8MiNN9xNBbh/BNfOQrqu04+d
	lw/9qPvbbftrX+6LS6lWm9PK2K1f0W8XlsuozrS4mJhlbtT5Ttr4vVYhv6A2lBbyBiK
	4FWfPSRoLiQ/Gni+qAe5aiHFx1MgSXeWVotor9s0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7faf182-cb43459e-3dae-49bf-a5cb-837758536970-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd36ff274534b89e980ab5eff4b53729dd949af194744bb1c9bb441b9adf6a2e
Date: Fri, 19 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660944052
