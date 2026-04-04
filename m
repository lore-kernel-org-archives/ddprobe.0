Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A0A21CC58
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775278534; cv=none; b=aJOtDzXuoB+vCc962yn5Wrinu0Pke7Kho+qfkQEnkmVJHm3bpJjfq3WvhHactnkEMWYQwZCMlUsINLkf/xP92vPJ1YqPIOe51og5ZFizieVdSIAEzN4aVQvm3ocZSbT2nhM7DhYeOjjNWdDYKg2gvlu3QoFJjuK6revNxAoJDWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775278534; c=relaxed/simple;
	bh=9A0Qn5s2gj9+9V0pJDqjFml/XuhgdE78uXjxeZJz384=;
	h=To:Subject:From:Message-Id:Date; b=d8dK3l/KC45zqzKLi7BU70LWDITVkyQHaHtpmmjyDcGRh8LSDNqQmykK07eXf1dXpmd/3mY9ImwvYx/rT30pji2YycgIY/VQEzdtTpE5zFDcV9iEI2Gim8OQlWq9rICVAJF7D1Zm5AEOExFd6aGghwQue/I/Ny9l7N+ZY2daTvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDPlDEc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDPlDEc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5D2C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775278533;
	bh=9A0Qn5s2gj9+9V0pJDqjFml/XuhgdE78uXjxeZJz384=;
	h=To:Subject:From:Date:From;
	b=qDPlDEc/EBXuiQZm3CpYZ1G4Iku7ZNGD7k+BI+Y+DbgJOZ6G2njEpyu90J8yaKr2K
	 a+urVuxxZ21HkRucP9vqu4etoK+xh1nr4Mvj5kQJkMa5TYRrWvW9c9aPMgbSECJ4NC
	 Kh0IgxEtPbQwudWOYIYK+javVbC3eW8FInuG8EyAkQ3sF6GJyhNLKWzhHCA6Uj2jCY
	 1GLld1Xsys2tdocO5XLLfYm712W6vfZRTSj6/VKFkUiQV8zmn9/OFYGYnRmL6pz35E
	 G4RVp2xJt5/BVxm0JmItv48ulhlAw/KjVz2REDryOYvUn8ktBRt/ZvipMZYYppge6/
	 aMOrbTu6MZMyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC210E88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527853369.30827.3293924822860168426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0029e7f72bddc252810e0545da86d93ee59ca074641b6192372ac146a1bf8fe1
Date: Sat, 04 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775278533
