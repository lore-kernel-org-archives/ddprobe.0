Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1636913B293
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892494; cv=none; b=ZQXS8GwMZ2hTwucX9nGyA97k0Ixcd0mzGaRzkE7X6lyfZe9wc0+zxBhFYQWXso3vrRI80T/wFVyMbCukwlUIN4QvkIgr24YV82gARL9jEmib+Iye6ts95F6kw7gXYjrU9IWEdREnN//mZrcZ6o6rJVosMymjXNflVBJtkXxyxbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892494; c=relaxed/simple;
	bh=UZVXNOit/Dh9Ec9bA7Tp2o6nJKnUzB99bfcADo9sjus=;
	h=To:Subject:From:Message-Id:Date; b=uiD7xcl4EyFKwFOP0b/a1Z7VJ9Gj6uOkHuiLGW7h2TWkgHrKcOzQtPE0g0y/iQDYCrUmZGl9bGAsCe3d/2Bmtvfa7MS9jfd8y3bnZmuf7pkvjjLTdrobwl8CdC4CgG4g0ccF3tcb49L1geH1nqBQsCZnEpIlaMQNJhsekYrcmqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfrh8dbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfrh8dbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C15C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773892493;
	bh=UZVXNOit/Dh9Ec9bA7Tp2o6nJKnUzB99bfcADo9sjus=;
	h=To:Subject:From:Date:From;
	b=Pfrh8dbXMmpXff02MaTtvbvTyAYvEB+d/FGlrSu2f7egwkiFxEqj2x7rovvUepQdY
	 Ce/3Av6PcVUtLD2xX/B67Tpohquexx8PwKfX22L2jf90vitqIzrJhZI5DtTbcvu3OY
	 7FOsonJqwMH1yh90g0EYMnn6eIHCHd3tsHv9ADFaXl41RVeJ2HkE0cbU0lnlMhwO8V
	 qleKhBQKYwSbwT/iRKhZva4Jnb7QOZGb1oYIWiO6nq0uRsbqyqYstU7bGzR9n5clyR
	 ejl8++mHAIfS8xMz1wA7snIH4RIQ+6gE8YuRD1CXjBpUWBa8DqRp/du5iE5sJhprwq
	 MRoY2Nm8VmzfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D8F1088E72
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389249358.18201.3422058068814683832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49f10cd897fdb74b515f673cd2bb5ebf3b3ff7157459d532234174e7be80e58
Date: Thu, 19 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773892493
