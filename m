Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D031360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659095452;
	h=To:Subject:From:Message-Id:Date;
	bh=E/GT6TUqkvGEA7ztM/LVkwAsIvoL1lNmYNu1bIyL81Q=;
	b=FC+vrPNVQYaMcqib0T3RgjJPELgB1qmbyFiapTrbRX0mcDS5Cfw6EtHklA8arphb
	+6bQuC/K8ktjOCc8071AZjvCKILWnxBp8n5orvKkDDE8ywDbyWCcNwZ6GynncHyuQGn
	Qui9MO0CgeuizLDHRqhPzX34GICr+o7Wdso795mY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659095452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E/GT6TUqkvGEA7ztM/LVkwAsIvoL1lNmYNu1bIyL81Q=;
	b=TRqWl7f3vDSWATw/6bVJKpt/BSOTXbbL/eAmPBpC4Ka5QRPMiauzz0yhzTMXg00l
	SnOkyasBjSMCO1UExvY8k3vWEQWx1PpImdIIO2WJQH05zmD3A33OW35N6d2KBMhlZgd
	QIcNax7GPNhEKFAezZaKeMn2Nkx34c2FPR7Cq/Rk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249cb8b69-94770573-9fdc-4cf7-b7bb-f85740f1d493-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dcbe285fe7ce51986f722070ba0dcbddd435e26a77cac870e6edb0c920195af
Date: Fri, 29 Jul 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659095452
