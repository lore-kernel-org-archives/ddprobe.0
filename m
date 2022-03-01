Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E9A17D1
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646131284;
	h=To:Subject:From:Message-Id:Date;
	bh=Kouv9amqKnZaa8fKu4FKaqoBgAkWaPUViMHxSgASoi4=;
	b=JdAHXEiUt7Dki15UBA+CY90dNV511fQV1vXZJcsxKZ3D2bxgmPd1cpltAt+uTaGd
	CQQOODUMD/PzHXiWHa/WjFyEpcOHUkE6qD6u7PbtxtybHpicp8Er6tRENM4VrSawGTt
	Hl1RHX8TdQYzA53mif8B6S2Ox4ZZt95iEqf5RX3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646131284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kouv9amqKnZaa8fKu4FKaqoBgAkWaPUViMHxSgASoi4=;
	b=HLxGkQO8yJCTjdp6QR8QFdPqUDrVkFNxwoMgPMZbzB3tj2GGaEupYNm5ltMstC0I
	tVd0lt2CRvaP0muJpEiQ69p7tc6nV8JayXnx9VNApXDR7h8/CtrrkB3m873n9WNQtU8
	YZL0ajuWtswty4gzkpBLDKrLKkY5T+iCQf4VLBwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f45120b31-db010d45-b04b-4767-a32b-235e7c71b873-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ea0a99bf47e74513b4726ceda295f9a9c249604d526c874b13880fc14c0a116
Date: Tue, 1 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646131284
