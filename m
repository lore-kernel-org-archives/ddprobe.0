Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663AE2574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647035784;
	h=To:Subject:From:Message-Id:Date;
	bh=iX9iddbr0hwXH/Km9/CBnGEKK8p75zL+A2WOIRbX63k=;
	b=RlNhjWiO1A3PLFO9mal0jzS7Jt58JmMLxeHzMFecXIMBF7Yu9ftKT0CJHZQxpdi9
	/IHzz0UWjRGk9tywnCtNfRepKSP/fnXBZfj7FLrNQdim3rhQ2zzCUZnN8/Fjy+XE05b
	KJe1+WoL2VgmxuwszsKKzOpvXsvj8wQRvhBFV5LM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647035784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iX9iddbr0hwXH/Km9/CBnGEKK8p75zL+A2WOIRbX63k=;
	b=kYp4PWGlutVhRz+DMMKeWFtfXtrb6DJr54ktcXdWtuiolG9c4Xz7gnQuFWhB+YKB
	O7HSMsFIu8v7kiJBxuOR4pFSBv8vD1nHgdhdFMeBdcphPat8RCV4bBp4GgF87Ls9RGT
	W8BCuCOd3D4vCxz+dyhqbOhDZyyq2yb7QpV5BjzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7afb9e21-effbf142-a85d-4d66-9276-8848e9186b8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad5fa395d9d1e51e64eedec9d9aa4c705f055efc2f875dc2cc19c45c1c529633
Date: Fri, 11 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647035784
