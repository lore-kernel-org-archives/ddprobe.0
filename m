Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE4A7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 07:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644652227;
	h=To:Subject:From:Message-Id:Date;
	bh=wEO8dX6t8SW568L9v7LapN17dQgAsbcMOooqR1wsstA=;
	b=J2kUgY0SpmNfWBdUQLb55MX7JU2Bw78BfEUiwSgmMdgxvKEhdkBLvBBu4oLVIr66
	ySZG/MXeY2AHBYW6pi/ACaUTX/W7vj66qgZpKGEZ7HMdUD3PgSNvcAl2hoyVf6K97F9
	Nq/8R5xOYJCLMfU5pGeoprl97EPiVlo78JnIUdfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644652227;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wEO8dX6t8SW568L9v7LapN17dQgAsbcMOooqR1wsstA=;
	b=iq9tN/9VResf9Pz4u5pLEuUe52TjptxA2e0lH9H//vfkW3s1Els8nzOoEUXQhj9V
	j277F7PgtFs3GUDxizsevbSIVf+CTOzbuugkCR6rsHET01eH335aoEiwZh55/+8pRMc
	3h7nOGDOrIe/OtlOk9FZ9PZpcbenbY6Fb6a+Biy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eece96c1c-b2e8925e-7d1d-4cc8-ae7c-8dd4440c579e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7944c0a5b567febd5fe0a1ff014bdf7f0199a62cb4f2483028297310e69ef5c5
Date: Sat, 12 Feb 2022 07:50:27 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644652227
