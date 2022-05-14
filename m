Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A39A29B2
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 20:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652558819;
	h=To:Subject:From:Message-Id:Date;
	bh=SzE+VZbfU3415PNEymj6wbey0kcy4OQG1vzvUwBB17c=;
	b=hlKr0uwHo39YrB5IHiDP/RarYm53z6cRnY7yAfc65MmuRAlau54glADytNkyxgzA
	8IORGb4CKGyexKtJrItUt6p7pUH6aePq+zvBM0JCyKpm3C7E5j/BW+u6T/Y3m2ZWfes
	aT9VZaZkxmPgDZtQDE0/WIUkN3fxQ3tyXN6dpvqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652558819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SzE+VZbfU3415PNEymj6wbey0kcy4OQG1vzvUwBB17c=;
	b=gkCGaIJw7iNw83gIlvpfPPNwLwlobDO9kfx682KhSgLxcmPgjckyAgOMZTLml8Vg
	4AKcGq6eXk5DM27PmhFngp+4trMvWeEKMr1sk0w7qyHEhQNewD9FRdXU8TN+DjK3feD
	/u4It1HZ750HyhMSXrIXBIfekD4b5Xwf0Jv3il6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c42e706b-4ab0ac4e-b082-4e94-9646-e840cb78acb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf2329737e41bd7ed99b06c11625650605b08836c62544a200e2dda77b019ff8
Date: Sat, 14 May 2022 20:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652558819
