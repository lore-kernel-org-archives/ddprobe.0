Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343BD21FF36
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759979394; cv=none; b=LeTQZclL0l4+mvM9k3S7Xgj9QsNCkdaorUfbb+TonxGSUkMKOCnsxQnnrdg5icFZ5d1vBy2ZkFfrjsVzZ2RkGuStN7vsLkmobuOPdnC1RrK9wUr+MhqsbhcOz3qtu88VTg8vfyPmVJzFMGjiASKhZjYm717GJxeRNLw+hz7St84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759979394; c=relaxed/simple;
	bh=LeDuQp8fU+4w5MYhUOoyNyUGYO1z+OuuDIc1/Okv3+k=;
	h=To:Subject:From:Message-Id:Date; b=KdQxqHA1kVZ8eowUbCtrSXkg6XDYOlAKQ+qmajLDhALiIceFLJa9YOlaKtLP4cyHH2o8lgUJObf3gRXwYDAN/CJiXjk1ZXR/T1/AQWsj9ztzRnkxxJb+H7ltwqgLUjkdhiSLcjS7iz2BZy9Hx3GzMC2ixXihy8YVGGbBpXVAyDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quzhFcx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quzhFcx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFCFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759979393;
	bh=LeDuQp8fU+4w5MYhUOoyNyUGYO1z+OuuDIc1/Okv3+k=;
	h=To:Subject:From:Date:From;
	b=quzhFcx8AIxW/CP8+NnEHLZjo59qARQCHFKdOmFctDIdgkGHrzFmMdzlByq+4nHRs
	 DNtIDKyeeGGG0A5h606HS7IAm1s7vhYhrtJ+6YVAU7gKl/GIrZIiRjZIOlkhgg0Amd
	 CMpLlyyMMrGhb7lUWwQR99cXp28qx8BotG6HopQTzsiVP2D6jxPyPp8wpGe/HuNT7F
	 DF1fNeEV6sa9w2uTdHh1g4/AAC3Foe2oGZFQFvDctXuQFyqrNALmgolNA0uxx6kd6q
	 xN8e7CmFXbT+fk+qAsNYhyGbmIdUWJkf84kcxGh5A7nCiWDx56npEDMJ1lBGBFXqUf
	 +gql14tKHrXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D60CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997939357.20958.777421809387293069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d5156ca4f330384522ee85c26404c3224de9a35549c6ce9532723209d3607a
Date: Thu, 09 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759979393
