Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD7A17C2
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtHsBZyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C0A2C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704005296;
	bh=eugg0nJC7kPkjJ31X5to5prHxxM1pYNY8uJXIFlUwdE=;
	h=To:Subject:From:Date:From;
	b=VtHsBZyhnNAsWw1elCHVnsdMF5OI5Qn6P2EjPqvXmq2R9JbOYkwB+WV/ynMlP8HQi
	 Yp+EUjbCpQD0ggo5V6FV+vuBTDdp5ozLXkRaaGqxuwUxg1qXIwyth3lp+G5Ta6N//s
	 ssQ7cHF4pDA5SekJzn/XsBiaijv+uOwbl/uZuYLceBlGEf9FN/f/ztlb9Q/PBImZJv
	 eIe4z/mt/uJcbmmaYsECPHgErcTb0BnDSkcWh0D/hXYgV6zgOW0zVYp151KQuD3yNA
	 frR3UZzgPiEknSqRKDtUINiEU2Xu5KSzP9YQHHbXdtY0r06d+IiEwshTMbnW3V5VKU
	 QF7OwLYWZnvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD26C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170400529641.1340.12310388919283788016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e747a31bd0e715ecf4c610962608dd72a04cb87b8438801081ba326a79e626d3
Date: Sun, 31 Dec 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704005296
