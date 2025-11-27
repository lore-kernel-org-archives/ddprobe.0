Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26C9260585
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764255774; cv=none; b=pYTgyERYLVZez8MPpjDlgCgUF8JbEYGhDm4AEzAqLrzUhU0pHE0KpasE0znujEZCUI982xTwmPUosOG6WGMTBwo4f56EmJV9HZFclAcQyhTI4SXwxjaK1ImQ4R6B8pUDpXK+3dCYmK/3HXjbN3pS8yY7y/yxoahVyypadS15Eqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764255774; c=relaxed/simple;
	bh=Z4MFzgxVqOgjkTb/x6dCPgdKqI8qkjv3Xw/Qu60jdfk=;
	h=To:Subject:From:Message-Id:Date; b=du57KHHXbkuSmsGHMkGUXSwalCWYM43TpACJE2RB6PPNUYqx+X6HrXVDmMf9myJJIJysnx9q0y4HZFDiDDFqwcJ7jBPG83tEpIo21aXEUWWtws4RKbPPtg5KIMUYYBAFXyRLS4eRYp1EV/N+8C8KTroWylcXxUEztaInVbOHmJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yay2GmW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yay2GmW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88A9C116D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764255773;
	bh=Z4MFzgxVqOgjkTb/x6dCPgdKqI8qkjv3Xw/Qu60jdfk=;
	h=To:Subject:From:Date:From;
	b=Yay2GmW2KCnc3PPEG9j5j/REWc5/njkod4ISeLZsEtehzDL4MSFTs6PZeru34j50r
	 zlcUJawwLKMZizQCMh+yP+KkTzc6Qf/cnfIYWqZryEl70ZvEjQ9/gTFVTm1M/YA0kf
	 /P9K4hFy6dopbLR5sYcne+jLnRTJ1a8LzxbG0pshxECX0ksSb8rafItjhz/acE3fbM
	 309bZQ/8hFY7RFFD9P1yymtT/bRAcV4NCIWr7LbNktKOdCPHmDjCglUVlOw370SpBy
	 fvWvbrG0d+XUE2WoxmN7gz+q6KPI0J6XGlqoRQayrW1D3tj2hsRO2o4qcYq3VK9nqz
	 QvXuNcZQKLPLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23DCCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425577365.306.6433393224050235709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d5beb98508c481a2df306dcc7fb3192eb24cc11f498930a8a710fc618e7064
Date: Thu, 27 Nov 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764255773
