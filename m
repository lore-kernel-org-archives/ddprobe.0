Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D872C80
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 15:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC0A8C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 15:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675868406;
	bh=prLQvml60l7K5K/ZAs9ohT+NOWQmBVJe6C/Pqs6yNPE=;
	h=To:Subject:From:Date:From;
	b=E15Mj9Py5RmO5CNEHuTURJ7zRQjiDDwy5VvmM60WXOU/+jtOEY4pLQvIstVKmSLXo
	 2E+XOozCWeD2staRl3uBcwKnL5gQ41u09jKaWpcEWXbNgfhR6U+681r7RoOHvO7Xxr
	 LJh0vntUoimsHvNQDxUaWfNxqSv+Q6zCwuAeq1yIWB1y134m53f8aCOZSBB0KP5rVh
	 pr3ZvaDleqAmtsjnx2f4qEc3lg5TD3XRJYiVZ+t1BinkzDSxoOLLYH93YMjKZFJNx8
	 b3EVkPaNNd4VN5F9h9GdfdWP/sU/pmgmEVnh25XtRD8Uiw/uzcEAXvHAlTLBx+JvfO
	 jM68sBN1QCvTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08BFC636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 15:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167586840577.6487.12709057920524230461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af896c0c6b95dd4fa7c3324bdf58633f0011e1fe114af025c436ce90d288150c
Date: Wed, 08 Feb 2023 15:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675868405
