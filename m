Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE78D396596
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773735894; cv=none; b=U5a+gStfdHKHnxqLFM5VRs00Pc9cgfooZEpixPEF3jg6ordDqqMn73VFhJ9gR0ijuJix79h2JSB15AyNHrQbZUAKNUhoZvoh10J4HFtslKlZJBNCMGXGGC3ZqeW3R1WfyMsEvGcPFTC7BiKg8uMzd0IFsj3yF77urEwm/zkZvxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773735894; c=relaxed/simple;
	bh=AH7aTkodxJoMmEFT0chdccJZKxRcowWL2mF5TyogS6E=;
	h=To:Subject:From:Message-Id:Date; b=hezpU6JtLGQulKy/PzE1Vs/GK0AHieiUIZhaog+hMC2/yYPiMfaMuhQoWM9OsEGKFkEREXmCWXSlC06l0TzZb+ec+DNhk2cqkwueugaueMqBtqQsq598Mxqy0rxEOZJo+ILwdiQAUJp9zw+vakyK56Ber/G5X4fsiJ8s86v3Xh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQNp/3DP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQNp/3DP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D37FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773735893;
	bh=AH7aTkodxJoMmEFT0chdccJZKxRcowWL2mF5TyogS6E=;
	h=To:Subject:From:Date:From;
	b=AQNp/3DPW1CdFlG4GaKtYZLYIVY+4XVdsg9CX5FAWYr93qN6ArjCeONt3jlDOrIr6
	 igG6YSGQYMMMKslJVKszMkJwRAbt18/cXuOVA8UKqmIjAns1Gd7GkClkbbKt8rhd5t
	 FZEHfh6TjMcFOp6Gpg9O4iLuYmn50+DF7lpUbsLjdHKm5a2yFa+OBnpiAJYOKIaTcz
	 qZppKFXLqqvtvm97o3HUkk5UJx5ewFGVDBjqYuci/PGfqNvR6T5BP8Ju6vJqIlErw1
	 i12Ww4dqEI7xUnDizoq8mChFS7VVGzympr1rw5V8WaIR2If+vv+MWnFazInOFeIjjp
	 RFm3Dc9p9fRHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94BF33812
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373589357.20677.2090131574773554197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b13a587e612c11be738fd9fb0d7b99ef4767006570ae70c0ccb93cb2a5c07e1
Date: Tue, 17 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773735893
