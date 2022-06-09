Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E354C6D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 23:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654816919;
	h=To:Subject:From:Message-Id:Date;
	bh=GThaCbiONO817YmGaVOuy1vpLS1iTXtCQxsy1HAWW9k=;
	b=R5eVQ2+B4Poo7hanfMgYc3uLazq1suQ52xlDne7kLRmjoP75MA5M3O0l6/AhWCns
	PF0/mZvzrC/AqLyzYJB7SrDadbZNYKcF3q6ZAPdA73EKCFpsZyVapcqDHqg+z/GI5Bq
	mPYdf8V5pYVJU0V8t5mbhLtJhWat7LJiqUcEN2C8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654816919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GThaCbiONO817YmGaVOuy1vpLS1iTXtCQxsy1HAWW9k=;
	b=eTYxilk48zMxfCsdvAp0K4PQWq+SOg6M2/m5PqBbUsyuvDlzHxI/gYsEeM+1u7wQ
	HGpdXwIkaPv/efdOambPLLtKMLJO+ZpHQl6vin302u0ymK8RdH/eSxsSeuO3+e9UYVY
	jvdGaqyhtc7z2KpRN/VfV6VV3M+ZKs/thrJm1XwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ac64eca-dffe3ab8-da96-4935-be24-19ace9554c0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56fc0a983993f92fb9b0adf922f90984761e38b0b41a1fde90d3bf243f3fcc75
Date: Thu, 9 Jun 2022 23:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654816919
