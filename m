Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD01101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658998252;
	h=To:Subject:From:Message-Id:Date;
	bh=irUgNt4hr6hwDdX2uReN3ySUSkdGr23wTWMjbx1eNMs=;
	b=lZB4wzimSutuBmsm+IB4XcJqkSBlHvGm5MAZlv8CiK3WXx/Qw4g6IOi80z1WcKf8
	HphHJLP8iSxy6NIr+c1D5UmHQ3GY/VR0Slfq5zd08Y7/HK9iJqpkOBsIhifmvXidRGD
	T7bU3bzN8rGmEEsN9zsvVcz5aN8Dw2xqLkvQ/o7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658998252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=irUgNt4hr6hwDdX2uReN3ySUSkdGr23wTWMjbx1eNMs=;
	b=icPEnLYigvtKlFIVnSueyY1P215U7WMpWTdXpmSfqYulqCtk0Hp1svY/ZXY0xRZU
	vW0c9uaZqFgQoYZo/4U1aQ0PXjg8bRpMSLCk8//3WMCnu/rDrvh9l/Z9pd5zVvKln8Q
	vpzZM5+9zllTrNDviYL5sptBDUk1vlYEfP/4Dcfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244006419-dd8d556a-f03e-4376-9389-1e2f16896b2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdde294787cc5a7f0d6bb78c91d3476f963233b1878042aabacb137c06f3b440
Date: Thu, 28 Jul 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658998252
