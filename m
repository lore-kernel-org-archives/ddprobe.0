Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B35F20F7
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 06:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653199319;
	h=To:Subject:From:Message-Id:Date;
	bh=7MfQ77Rr/9K8OZ1czXdOL1LdeFy7g5Ix2Hd+8CCxh6Y=;
	b=ffHth9DlyN5F136bPlC7g0iBijeCIYJ6EbGVsN6jUXA2gDvZgHw3VSW+CdAOUv99
	oTWTAmbXRw4tqRN7OHvQ5Lw9ZdBfpIf4L4efNHqxANlIx/rUyCT4o4iTFobQVnQnL0M
	Os9W9NEiAPXp72k+PosC/0o3eFko+MCHgseWzMR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653199319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7MfQ77Rr/9K8OZ1czXdOL1LdeFy7g5Ix2Hd+8CCxh6Y=;
	b=cLzlKLzpdAgsrOKxCPr1DIgVMwRLeXmAyuKEW6r8TEMZKeUupjwiqV/ohxVeiH7s
	r6QLJi+bA+m5adftixQexcSm7t0JAY0ychu9Lju43RM/ph9ltRIR8PFzo7yYuQ498qD
	Dp+q+Ehwr4ujsE/iUI8vzp5kcaf41aa2u0BDsXCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea5bb0f8-47617220-8092-4cb9-adc0-b96ed8d20cc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6af7f0f21f719e403ef9fcb85bc170dea96bc15635d16558bfc713e38f658bc3
Date: Sun, 22 May 2022 06:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653199319
