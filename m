Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94153876AA
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773165893; cv=none; b=iSh6VwLXERkeiKUxJIPbehJUgq+xS2y7YQkwKRPhf4yJ71e+QNMVEHrxr+fEFw4Y3eQN6s8OEfJMiANWCb0FtG48/Yk2nrWq/R/7X5yu50Ni3JSIPcGWkmv1rnw4o+prTg90TgNddHtb9TPrAe6nGwsl/S9LGyNa0YYUNfeoFic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773165893; c=relaxed/simple;
	bh=+WH2naZaF4yvCpl3H92OlyEuZG4wmGf+ZBHdDhbbXfI=;
	h=To:Subject:From:Message-Id:Date; b=XdJ+KlrU9Uki3oM2Kxv8TOpGIpgXh84VLO5h4uVp6Brvhb8Qv1mgazEVYeMcjphIyd3viHf/MdHNxaglrckaP21X/jUY3xC18HYnOHNvCW4WddQ7R6wbsm87uiMd3gXLTh348L+Oy9kmYpd2/yE+ctzjhTLtyrYHTKK4GzA5jRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4OPUicV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4OPUicV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1CEC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773165893;
	bh=+WH2naZaF4yvCpl3H92OlyEuZG4wmGf+ZBHdDhbbXfI=;
	h=To:Subject:From:Date:From;
	b=P4OPUicVeS9aZWwPEsSP36s5gpbp9Te8qnYf3GSzfTLNaI5JPrQeHsE5M3QERz2bi
	 POunMf8w/pf79E5F3h9d7Eq1fmvzVE0nicK9WjEXMfm94hj6NDUDCVp/UGkw37Pq7O
	 tUwcJkwz+CapJZheVLHUN9KVRRbZt0ZuVY1mD8Oh17ud75av8iHhNm36i666EXoLRb
	 +TsAynbQN/Gm3TJ+Hn7Qrnx71t/9BypntRfJFsxpjlH8vYuh8dnRU0HcqXv8HAab2Q
	 n6V8JTKDsLQN3aZhRM3t7L8HpKzeVbpm0RD2Q3fZGD/H0si5TJ1odNkv0yWOLA3GW6
	 RKTd5m8jQvOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3A9FD4F13
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316589360.10793.12388914294491842808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be474636e99b50ab31616f799551ddc995b7387d649bf342d7098451e6a7e826
Date: Tue, 10 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773165893
