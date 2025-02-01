Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B881552ED
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738419954; cv=none; b=L6uuriQgNySgZO7/FYBUZYWcyqIMT8rUhNgF9BMhg7/ISnVILlywSVGUnbg2+SCn0cmnDyjsu5E9Kp3uCmnhO6sitHJPEgmeyUEjwqDRAguiT9R+51z1AXn0qaM7Sk76ZtDW2xBHUIQ7Wjq05ok24fZ4YOsDWjSwpGXA0dz3p38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738419954; c=relaxed/simple;
	bh=Sd8lPYVDQdz4L8gkX4tnDFFIajFdhjcyxsnBLZbDChI=;
	h=To:Subject:From:Message-Id:Date; b=Dqf1pcYU4PbLY94HeqroTpe9foRUIixFKHNPdYMbXbH7YQZyKhyVfUI/aUf34LFm9KiiaVx7OsAjDXUDGrXVHXXqg2in+Geo+FiHEB8mIK/0EzJfXcP66TNxtN9ZV7ag8fDfzs7g+7dojDUgwEsLUtXQSoZ3HkykegK1JGJDJuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKUIRnj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKUIRnj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6505C4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738419953;
	bh=Sd8lPYVDQdz4L8gkX4tnDFFIajFdhjcyxsnBLZbDChI=;
	h=To:Subject:From:Date:From;
	b=rKUIRnj3N+LnqdPTbaA8Rq0xuTLfGsOhg4GyCCAIkSh3aEyyBkf4tWsHBYDk7sFBS
	 CUpcFG6T6CLkwsm1iBBZHi1La9+s4m8bSiZrCwkq0bdR2EBrte6/8M/+J/rFscjhAn
	 JJ2E9j7o+fA/k04GnyHBsu3voJqBZnolYQsdZvEZ6DR/7HaLJXUu0Nx4kPJd1EKPj9
	 +367V+RHOHdOWPoC4PynXAH6LkcRCLjSoZwT7bjXdLJxmUwTu38UgVH0JicICrYy9d
	 aL6F1JyxpjiX9ya/KHFDuOmiO1c31rM9KbsK645kkPg6NBUBZw4Ms+r7DKVu4HogWW
	 vLJRxrYZYbYmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1240C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841995362.27543.5569844983200545319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e46c91453dc15d10f57df3b9cec2103aea27e638a3ba25025d5b86efaa2ea5
Date: Sat, 01 Feb 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738419953
