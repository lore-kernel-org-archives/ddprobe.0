Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAEA134AC
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747862994; cv=none; b=kM862TcVJa/J4fltNjg3tZVxLurqMcxAFJdAnmGDgRyMNWtcL944JdlyDw3/7Su/LnC5KV69ASfFh7zJdmvk1c4Rpn+HlevM+O9PD6N8YCDfCYI/0C55dLvHJJI/fFXK/BTCmBIX/SKFrMw9E3P6j6cjDWHOLvE7DXntCHEr1zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747862994; c=relaxed/simple;
	bh=pMEU4U6ZT0SPWUGkghhTUaaMHDGqwaXf8GuVIMpTyRo=;
	h=To:Subject:From:Message-Id:Date; b=nw1q1Z0A8IetRyyY/VF7UZIE8fQkT9oIeEpzAqOyn9FXexuH9J8Uuyk8ixMb5tUQ2Q3GA52My2+ItA7Ac0ZT8xDl3S54g+g/1fijd5xe5jbp6IKmMiJsiq224ZZ5rpCycnDkpV11t3Sudhsqj0M/HgHjfFA9qfFbioCbMiolINo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tATHlzYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tATHlzYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9651C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747862993;
	bh=pMEU4U6ZT0SPWUGkghhTUaaMHDGqwaXf8GuVIMpTyRo=;
	h=To:Subject:From:Date:From;
	b=tATHlzYuiqvtd1JX8SFsekV9kf+HdZSoYdKYuhFif3sDnEcA2i4Kiol7LpfqBgnVx
	 Tk+ehTSVlAxMYTW+pxqn8+Cn6n6aqS7Fm+ICznVCrzp0wn78VYLsPKJunqua2pi1E/
	 quzluHaCbQHayhJIVuEWwfV8s2ZDnaNCUTeGvxBqID2AGN5Mbd+31f5V6USX2No3EX
	 WtIVVspVCn98+JpOIZ5Oo+w7LvrvviNn8rz02WtLGrL1NshlL6nH2xCn4zvt61KNr6
	 u6zD67fUJvYbL6YCiKKjWPTkp4Bjpwze9PCfJTl2UoXnw6a59j0alZAxLFaLLg+GIN
	 COw7z+l9Y4rPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD2C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786299357.9560.2783275642709904765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3699387ef7067ea50602411aa2f4481563e849b0caf443a2f66027fb6156f7
Date: Wed, 21 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747862993
