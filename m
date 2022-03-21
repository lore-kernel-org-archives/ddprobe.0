Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6FF36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647830784;
	h=To:Subject:From:Message-Id:Date;
	bh=078ycaPvg73VUFhk1BJ9Cdhs6zOcUmZLq0daEuc8ZtE=;
	b=LUOs3uhyhl8errXgLZyZlZ5LR30I6fYpYiO0kQIZ0B6pxuErv24CC9FZqiqcVQ/w
	r9TeRufGPQ4QRrYm1ZDSUQYgRXrpHRUhvlzbOd0/KPg2yNBnyLhJWJhz9sPuK1We2qk
	l1dKrcuYnW/QV8gDWwGJoqZwJBbQ+EclL9veTDK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647830784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=078ycaPvg73VUFhk1BJ9Cdhs6zOcUmZLq0daEuc8ZtE=;
	b=MLzPA4HjyNAyNjUPqUkGRsE6RCRkvJ5ckgwjtoZK3+WaLYzUeZ+60A7cPDM8YNBc
	NEECUH2PQb6R8Fb9NNFjh8Uqa+w1hV4oM+CJJiBkFnZAtYQ5v5V2u9uS9Y7Yio68J65
	1YTviRe+0gYw5T9BHFr1hMUJulbiFg8zd4LjFyvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa5e5b67-8a9ab861-c655-4875-bda4-a491da131c3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae17c32771e13ab8cef5ae9b9df6fe4754221fd800d575e214d22eebb35c7a5c
Date: Mon, 21 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647830784
