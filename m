Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DD47D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644878785;
	h=To:Subject:From:Message-Id:Date;
	bh=I43ueKgiNef1LuuOq0YdZNymP2hRDkgApImmxZVxAxQ=;
	b=l7u342ocMA9/zEA1mSxA2ZCPXPXoqKj9rW3qrxeSAJ3xbUbBxWtO72eWw1FR55Ml
	rkE9RN5L4Pk8wWL5e3CxnUxEJg1VRr+CjZdFpehiJ0TVVMP5zYE2y5cTEl8ZuMsPx9E
	U5s8RiNo6mn0D+tLFtImUTj7PIVQ3kBCQ86lMIn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644878785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I43ueKgiNef1LuuOq0YdZNymP2hRDkgApImmxZVxAxQ=;
	b=RRKX54CYKlaR8ZzIAAyBCMhycXdJ76bbqKpnJOMUIT22tBygaucndWy70kXWjpB7
	7zr13WgY9fRecm0XrwrT/QWrfdHbHlr/jOEVybNRRVCQuLWn12hGKHMnjXFPjWTWO0n
	vxKuPkSm9X2EVTXJ/UBpYhPXF62t2vDsFNzkTUbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa6a692b-a50e43b5-eaff-422d-ae9d-623b5ebdfd4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22433a3fb6bcf18f198c3f2d0a712a7a891ec6eb62652d1027e8ac6e7fab012c
Date: Mon, 14 Feb 2022 22:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644878784
