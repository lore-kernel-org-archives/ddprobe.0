Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E3A7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656410212;
	h=To:Subject:From:Message-Id:Date;
	bh=k+YU9bbcoEoNbEuVMqbSZmcz1nCyROaTKTWMPf/UV1U=;
	b=HFbVnly9l4axGpwHpImYmYzYUfTaEutJnOgHICDfdvIPj1+qSMdzcmQc7+q8vIh5
	fDIZET8Sq3ciPvCWDHlzmCTnJIr8vbncf2Bw1qqYnU2s6GLmNGTVvD3s5DBoewoWN+h
	3j51RWVzOzzbCNWngA7Z9EyN0fzBvolafM552HsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656410212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k+YU9bbcoEoNbEuVMqbSZmcz1nCyROaTKTWMPf/UV1U=;
	b=EdU/7KumcnBQDLv3ExXcfSaei83NcUIYMy8U4BXLzExL7YOtxL0E0JXMRMxB7VOc
	OWlog/xs+JfCA7Nhbrm0X/jsliQoJD3t8+nh18aKFPGYUJ9xEsJL+ZfaIvH/cSwunJa
	fDhW5muWZRQkXL4UEM0YFvdmkDNQVq2FI5dr6Rmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9be07dc-9b35f0dc-8f8c-4f19-a595-1b40d63de8bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50ffef3041720c7d7ca0a5bae38f0f5a583ce23a49f56345d154d75be436924f
Date: Tue, 28 Jun 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656410212
