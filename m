Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8F962A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647133284;
	h=To:Subject:From:Message-Id:Date;
	bh=0iUyattpXwvU02t9uxsWgRZzJKE2PKZJ7PV4I4BWEZs=;
	b=HMOeSz6YlFS+zMadMhbl32v9IqSdgQlfd4xNWiqu8M8J0HPFHhc2p7rS4/S2SZ02
	CnNYVRmRFl/XOl6AQ3ydEfAWIjok9m35Gz4eVJNgZvU9khPloiwd0V7wMBaFMwi7FE1
	8iCD4RrRUcpso28BYow67QZBQ/sp/In6F9yw3RRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647133284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0iUyattpXwvU02t9uxsWgRZzJKE2PKZJ7PV4I4BWEZs=;
	b=K8gBEWp9WLGPivuugUw3b/oRdbULpfvN2O2/OHQf2fOBitV0FPElFc9RJmBYx/1M
	88zf0D3s8O6WNVgcfg2UqholgJyhDTIa5iJbjnRACUsuaCF5epy/p0euipV4wXrQc0r
	38i/FtMHecb0Rf4REoh04jeUI4NQ4c7M5OQAcaAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80cb598a-06290244-41a4-4350-aea7-c7fb0f668273-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 512d64c6657946f47c19163f2e9bc7eef4a6af202441ad4e15df6357324b39af
Date: Sun, 13 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647133284
