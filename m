Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223445803
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656713812;
	h=To:Subject:From:Message-Id:Date;
	bh=+vtLQ8N+1Iwii1+URG+g83z9xXVsLzyPvmp004596mQ=;
	b=JTzxIUrm3iGpa6QYwLhgJTAk+YBXSRYhptvIiAWD87yi9bA/rKTLnHJbQEItIoCj
	sVEMulgpQKR2MUoxwYZMB2sYDT8/GZp/95jWW9YIxyOimzyU5OuLiX07bRwPd+pjbef
	SEhaf4+dW7U3/gCNm1WZUd6xRcliVWhLDrA5cwqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656713812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+vtLQ8N+1Iwii1+URG+g83z9xXVsLzyPvmp004596mQ=;
	b=XlL5fpsryy9bF51hT7teQ2Wxxva7yyqXNEuJlLsjZIBB7EHS8+Mh2kM2JP4PM3gl
	ae0TKPRg6RvBOXJjBPhmSnFSBd6ByKSX65jA8Y/aX/Ve1jO6A0utxS9bpvjM/gKtkRp
	E1/Whm9fWUxkMYq0vQ9LI63OSnZ2giqU5uzYCDCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbd69965-ba230f33-a904-490e-8bb6-32b5f4063d87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcbc32264473ed50c31a65c3095c6ed3f0be4830a816547c98b904d5a6177b77
Date: Fri, 1 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656713812
