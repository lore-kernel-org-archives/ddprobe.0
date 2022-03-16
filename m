Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DF31FB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647402984;
	h=To:Subject:From:Message-Id:Date;
	bh=RxiywczNsUAolmIgGz3T0EOdDAkAWmK3bbAoowuVZqM=;
	b=C8FcG5+GDzSsSU4c11d4DN/AVJb/wdOj6+mVphDA86dvdmKlu8Y+QLOoYUU64R58
	HtVyCOgWqbFuChRdqXI3A1nPGZbBuIecNxyAzqjPKW7BirfgW+HehWf3kg/N8Gl7X/E
	zX3vpOE4qO/lphlXW1MzhLiwaeR7x3xFpYsBf2jE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647402984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RxiywczNsUAolmIgGz3T0EOdDAkAWmK3bbAoowuVZqM=;
	b=TVrfhRU6XqWDoVqz9QgmW9MMoMZUc1eG/wfvzvi6+OJLv8TVv7y4nJWwmGF3NNJS
	Azq932d9UYwcp++/umBvNN6XVlxi1DypUQT9FVlpGpAn/QgzLDW9MFN39RLrAYyoKj8
	E1Z4yJ4UDDJ1qF4E9hZQwsj5j6GYYNNepRpVq6nc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90dea548-479abb12-d346-40af-a33c-6201d88954b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8c72ba9620f38c6e018ea0485c9b975edf116e78b4fe035f9ce55b1cf5cfca0
Date: Wed, 16 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647402984
