Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B085717FE
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660228253;
	h=To:Subject:From:Message-Id:Date;
	bh=3p2KSM/YUJeM/LGo3M0iJiSv0b3297I2HtPJo+kXUhI=;
	b=WUckXNs9KvTzfEqeDLy6gpNoAAfQQIj/yhT6iFUybwykyX4jjhc/Xuihko4/DFBn
	Oh3Nn7DXxPbrwKjx43x2927JwrKH1Q/IKg0CrKf0VBbxvxmke2OA69oEp7AjtcfWDu0
	7bpuLA0gaVjVju3h95yrJdtiViohrIBpCmr8uqRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660228253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3p2KSM/YUJeM/LGo3M0iJiSv0b3297I2HtPJo+kXUhI=;
	b=CvLZn1U1Vdb7TVIZsnQlSN0I3KA2qjeLSZqzCTY8/VbejX1oExooWDi77w4aCfc2
	DR0dESoagEfXABf+aUdWKkAeQpbIheVVBRwbaMPbSRWHDsjHQ82p00ejddYvxUkU2zI
	6J5RTHdG2AaZ7b8cYXj5dC+pEQfVvLCACAefSECo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d50b3fe-1fe4c877-c8d3-4a4f-b7d6-469413291f7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e6648388dfde35e1e60f464d0dc5539e463e83e23aafcba763cbd71576d07cb
Date: Thu, 11 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660228252
