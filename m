Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A697B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651217818;
	h=To:Subject:From:Message-Id:Date;
	bh=uwo5MBhWQ9eYP2uC8AnGFku2UTh4/+jzk9sSLcMrIm8=;
	b=GTeG+ZIqHK3EZxUgKfaWTfr3/bxsQECUvBOscUrPv/cnAlZZtKdRXsaxcQ7P9Dl7
	Wy2pABRxeb4fszOUZomljj4tY2mssy6dLcNHjlP1JkBd/RyZLCcEyAUu4s2HDTSDnm+
	gKag4GTMgYiyVmWT7vFj9zEtxf+zV7TpNI3/uMe4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651217818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uwo5MBhWQ9eYP2uC8AnGFku2UTh4/+jzk9sSLcMrIm8=;
	b=h3nFb1PnQUBujbV++8DhF3nNrTKcctNle/+yPW1zOxD9cqbjHOEQ3YuCYL77edHU
	KfvP8xpxZ1rorqnyo2pmqs9IeRlg2I2Z0QdmodL/3MO47NIQr5KVsIitDz4hddWLguz
	nhmO9ITj73ZBp4msbQu8C70Hb6tiHqz1rxY9E2t0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807440628b-bc92495d-8260-475a-be26-db99664fb45f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b327976966f1578475ac42de54f0be85ef78186acdc3f3aa41e10a8c0ca3c1a
Date: Fri, 29 Apr 2022 07:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651217818
