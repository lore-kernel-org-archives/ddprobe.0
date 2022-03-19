Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80932180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647691585;
	h=To:Subject:From:Message-Id:Date;
	bh=ON0Oo5aZ13sx8gEzx7EqvBTlIr4quDsVGun0ZP+yCd4=;
	b=a1DDL4p3S4fd4OZNwX2pEseERoVSA1PEEFdfHelhRRa1PR0TzDTh4aoaw1IID3a5
	a2jQn/H1v2qrMhCFFR76uGJz+pkt6HhugFuuPBSjz+tK8cdaJq274nY5S1VBnfExl60
	A4RMNDBVRuDnYLrs1fanW9akrWgkyObXkUiEfNDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647691585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ON0Oo5aZ13sx8gEzx7EqvBTlIr4quDsVGun0ZP+yCd4=;
	b=AB1rzjtLmJmKWemwl0PHTBDwLFHdPrF3UYaj9BIrwnrzhMdL+5BOM1Z9/pnPPwEn
	DLY1+1/G+B7oWLGGMJpyNKCJ0pZOrcm2N3czCMLziO13uCKM4sUc4sRFnErnjkTG6RM
	xaRYqnSnuk4M6jdzFjzk0JxdZ5t8QjqOVexD+1Qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa21254d2-2c4b4be2-a359-4cc0-9058-d955f6f16a4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 422af5c9019d7911b4164d9076590fa082d8224ff9a3e4b9d8428cd33dc258cc
Date: Sat, 19 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647691584
