Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A615218D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646927485;
	h=To:Subject:From:Message-Id:Date;
	bh=TRmqQSrzRwLroZTuDIJMbCVHtVaZTRqjFijcz1+OERU=;
	b=QttJ6uEm18A91yROEwxp2zrL9eNXpAIXe2xIaYZkSZkDXfiyRMkHMwKKEZD+MX6y
	3N8rc2tzgqNzYXDj4RZB5Qnzkz+oIdmXR8j632mCsETAPPKJG6xQw6t0iZiIiXL48q6
	MksJ3s4Qbs8sUjsJTTXjJ8/TvA1lWW0pJodZMask=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646927485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TRmqQSrzRwLroZTuDIJMbCVHtVaZTRqjFijcz1+OERU=;
	b=AxkHciDNJ0Kb9ceDWPCSRuUEL9F/Pf36ocJJW5VgSshn+Q7kGySRCn+Qg9TGAs0v
	ZlQ0GxGecisSsBPtv2+gUZZzBHbOv9ml2kmYeWkoz5gGLlO7dYjiBhdF/TE8/6rXdkg
	+TLYgDAgv3v7AF2hnJ7Ly7kDpqyvwpFtbb02sfvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f748717a1-0c28c278-a359-4fac-be6b-dbcb08039563-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13d2c3cd39a5371659384a3ff7e04793ca87b67a33b08c2f0ab79331e7e88d48
Date: Thu, 10 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646927484
