Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474F220EE
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9FFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684453685;
	bh=F5+by8hzryiylq1NiO6kUaLTyx0tdpxSp5Y6s2O+yO4=;
	h=To:Subject:From:Date:From;
	b=J4nTpcaNyeZXoN+fPPho8CLBJsdSrtO9c/cQA4j9/eeu3HtAAk8rauooTrPvJJw3i
	 zVHdniXkcONufywv4IpqVPdaHWSb8PCkEvppSqzhJlfqe+pAEZ+BHE/ybyJ3APMLXV
	 wtNdaNVNq2gxEkAtJv+pP8ywEKy14Em19TzuQFo6YrkaYGIppxZ22uyyoMI6MvyvkU
	 WL4yiMd5QXfY6i2FL0V8yTc9jjnMiNfk4t5GmGp7WS/+L5uGZUmvjgieFmOo40WZ6m
	 Gly+MQJqvNqhaxyD6oHy4pf2XExQvfMa70Z9hTjxeOfxF+dCINB+IJfanqOyaznlZJ
	 3ijZRLSfPTXdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF39DC77B73
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168445368576.4214.11613979442036078591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5038e4e2dd6302f62c7d3f0dc0320ce7418efa3db17bb6f5c6334b83241d428b
Date: Thu, 18 May 2023 23:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684453685
