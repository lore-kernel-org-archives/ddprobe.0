Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C431FC1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657658212;
	h=To:Subject:From:Message-Id:Date;
	bh=2GdxxT46Ntv6MFEx/P5bsw3Rv4Q+3eui4lEC9RtLfQ8=;
	b=ibqqP2Mi7/fhXR8fDdwTs3D0r+4WD6Hp1OP3BtYFzG/X+BgcTBWyalBqmjaHApZx
	F/YHsUBpLlqFp5GqLZAgNFgknUfIpPWR5xgXMwYYawOtRCsoMfglqyTyMlSGEwKlwax
	36r777tHx8iqu9oZWGfpP82xr7ZmOpmDcjLdmwOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657658212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2GdxxT46Ntv6MFEx/P5bsw3Rv4Q+3eui4lEC9RtLfQ8=;
	b=Q7hJdbLp6OTWf/eumN7v2tGxLfAqIRqDay4K/NCdk5fHKcTO8W/FpkCsAEHLrhRO
	fT0xVyUfPa9gAfT+USsY2EEJKLNvOAEH0Wiuyh2NUleBh2dW/g7c997o9kh7kf3z20T
	Xo2JLHzkmjqP2xiAaNOx/3MYAw6BgbnNSWSGA52Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f420ffe1-63aa98d4-2b20-469a-b722-3c120ff2fe43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69a44b09116533a1e94c726a6f26b87489d93d5aa048ba8fab120ccc69c66962
Date: Tue, 12 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657658212
