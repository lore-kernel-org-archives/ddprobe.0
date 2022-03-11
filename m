Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8963211B
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647025285;
	h=To:Subject:From:Message-Id:Date;
	bh=AHPxTBO6aD99R3sOrYBY0xZa9MPFRw/R38Tf6FzRRok=;
	b=Vc0cg+lQbcRdbjbEq6kGTDxTangQ3uXm03BFAfhsb6qgHNvllPb3ECALWJMVfu8M
	UYEI+U6YU8l96Tb+JxesAJn9zIkK0T8HeMoODbieAoX+aE2Za8PZfaLSHEVFzk23yvm
	o/cULYnZhVxUx4CXm2b5/XDuq5yWBiLv8ZFzNE8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647025285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AHPxTBO6aD99R3sOrYBY0xZa9MPFRw/R38Tf6FzRRok=;
	b=f/QR8zX8aqqSP5mMk/rPcoF+b6YVwbi9dtYu7fg6sh1TUuMDbnG+9SVUIUr5xXFk
	0xk5NGdFBVs2eYVyXwmAstLuBOd5XvLKIsJINddX75p6TbZybS8b9VrPGRtJ3cyVG3l
	EBVXA3HhmHg/BgowjgzWhTuiIpuKOV3JxmhGhaJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a5b66cb-83134fd0-4bb8-4b50-bd2f-5108ecc695c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a03d4e2ab696e8721a6f94341e5a1e4234bf19db0d9dd518d91173465e31017a
Date: Fri, 11 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647025284
