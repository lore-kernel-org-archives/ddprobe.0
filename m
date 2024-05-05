Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605D3EA4
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714872743; cv=none; b=OrgY4UQ3fBenIGxj8cbyL1oOPHmHJMVZ9ZnTK0awKM01CjVMvGCgPq8YnM5l8Apo4hRBHP9pHxSOcFlVGtCBDO6N8NBM/GCOe9YDFDQO9pNqmeHYEf41oF4VLJaIbRVMa2d6lJkeEDKdE4xBsvnVJA0/Hqv1tHqnSrtV1ZT7Yh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714872743; c=relaxed/simple;
	bh=0RYwYB8fpVFcp02psZpqy8uDxrXkLUIonG8SJ9UnSdM=;
	h=To:Subject:From:Message-Id:Date; b=dQ+XJSssOfcaIMexKOrYl8Su9PqHv51j3gXKiVXIYsC6pxDMzDyMVGabNTlq8tzbRRIi3QpDhY8tjb2+KLgMXtPhEAxpWc6xDyqFlq+HUXOwe3yzsHmJSOsW2JOpq+Hb4w6WSTQOhnr5PsU9aWcwOe34LUki1wT3KyZw0SkgJDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2M6TZJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2M6TZJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBABC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714872742;
	bh=0RYwYB8fpVFcp02psZpqy8uDxrXkLUIonG8SJ9UnSdM=;
	h=To:Subject:From:Date:From;
	b=t2M6TZJJlX+IZFjlDEymlVrjvcDFv/4/vxTQIWJsgSkG8kQGkjG97j7IanPbETyYy
	 b4kkdsCPqb8ry/90fQw1JmvZR68PiWau3TaiFgujUW70eQ4MY4F5tHK/RmN/ppDLnC
	 bTRlcT7mEdNstbs2S+rOxNnxi+w6NVzXXbDzYmnP6eGnEfNWZsMqqSyw82zS+sQ8s7
	 mYtvEMkmI1T7M1OEekDvv4JDD8eNaNEL1ek9UMXKxV7BTgPhRe5NR14f1v9Uqj7YDy
	 +cEzx7R525k4uL5ZW6plcqHB9BWMkDUwA2dylBRv0nYduLU0GO5jChy+t4JSlKTrcd
	 vRkp9/59rZPIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60D8C10F1A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487274277.32048.5045459618554451087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0f369c7213ba1b730c7927f5e9f031fcd35a1f3679f8cef76cfacc963033dd
Date: Sun, 05 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714872742
