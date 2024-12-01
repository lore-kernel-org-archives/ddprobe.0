Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C9FEC4
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733015754; cv=none; b=a1Q1LtbwXQgRFz/+7150NV4N3rYq0i3v+AvLQBrQUGgZHPyMc8Xok+PwA+jmcQdppreljcKRPtNjSXWK4qSDWi6IzglbgHCeDfJl5ybRRZ6A/gbMYe8p3g7TN9viL1m8IwlTMMQVIbNp9ZYVDs7FZTaj/oT3INwnV+Iilp4mIgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733015754; c=relaxed/simple;
	bh=RKndFx5Zdu0AJEebUZipeBh5HvWoTPD+Tk1/VxDmpsA=;
	h=To:Subject:From:Message-Id:Date; b=uFVyRXdgdFCDlNSa5X0/o26RKb+asNpOY5CXxcuCz8DYu55Rj8RCbSd0fNWV8YGuRFYx5MUB/4U+6DdOgrV9OA5JPny806wHzJfSjHIP/3+BA1SkmEHgSm8bjkSuw5ZUHrY9qYs1aRlcSAfki5gQ1LkpX/v2aUvN7shv5Rv6WpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXlVMgg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXlVMgg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA892C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733015753;
	bh=RKndFx5Zdu0AJEebUZipeBh5HvWoTPD+Tk1/VxDmpsA=;
	h=To:Subject:From:Date:From;
	b=GXlVMgg+hnJuRh8/kDyPLcxMiu6fWTCg+NqwKjjhNz8KwH4JJVkosHRzzRqORzo3g
	 Qx3GV95vHN/wUK92GwL3lrM5YwkTgZDhlKHHsFjmyFJS5vyIG9zVH76bF/9DaLTyhe
	 o+M6wJ4+NIqezKXkjU/qGTqCZrVCbs69x76iJfm2Rz7pRGlnczbtrDDGiwFq2C7MSK
	 HoPoQ0FdqjyEdqUgypfiLQWQ7olkqiUJGY63kflfrHKiWwvGwvTnLIWYpgC166yDcX
	 8XKm/M4nZoEtt3nNpZgyQQYvmeZDisMTl2zDrCPs4OGT5OmBTh7R+wbXYthpEgVmcg
	 ErVDzK4jtncgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7275D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301575365.7501.14778940008881038092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19abc1c806ea6adbb4579efb8a440c6fb3772f44c1a103726eb4fe01b754937
Date: Sun, 01 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733015753
