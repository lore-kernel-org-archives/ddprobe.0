Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A978825
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721014943; cv=none; b=WdnmKfXu8YraZJrWxbb4n56lN4POvjj7q15y2BTym1M8U3edEnNFeQguzlLA79kNJSBgL+tr01FXkTlpZcAwKt8+Sxp0stfvKQfRYfgHaPuxMXB+OtHBDr4gAaD25Md+0pOzwqh/O06g3qXbbfp5Ia92F7Yaolkv7r/njBXy6Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721014943; c=relaxed/simple;
	bh=oMXk9ZphByz+BnkgBZDqy0aH+wLhi40lq+BcWwYXpq0=;
	h=To:Subject:From:Message-Id:Date; b=ERVSJVJuDVlgarA/cPs0B3Nh4LCzBUFEFoCpOC2b0x650yGtRV/w5NUQhvWK400f9ZW//1pn8xALxPqzWOWCeNb4ojX1mMQSK2KzlVfJ3ZmrhFLudh/FxM+4Gt7kbJlxt0EzlFi+XeF02hMA0KSbibNx+ZYvZvTEj0x7UpHKz/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gahp8+7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gahp8+7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04ABDC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721014943;
	bh=oMXk9ZphByz+BnkgBZDqy0aH+wLhi40lq+BcWwYXpq0=;
	h=To:Subject:From:Date:From;
	b=Gahp8+7aJs882dM1JrGpfQSKNIGQLdU2rJwel25puIhiHxUiQah/SUSz1j/iN9bKe
	 C8mzFRwKOncENgMqawICA2V35cdKqGs+bJgyJUubiKjK4fJy39h6Qdcw1uOfgQpgy0
	 2ra4uxH6oNTiG9T7K0LekbqOLv6h10cCaMkGjTaBVNClioaax3Ld3lWKjXzjwz3fEm
	 9oEfZxHPv4iswIX8eFSmHqauE3OXswqWu2GUtmZZ6yFHd7i6NnxO+3gxuCYtJNoDIk
	 Wma18myNKgjgqbm86v4obkT5+h5OxrDvVuGszMeoan5LDzh9N/ubuF1YxlDiF6LT49
	 MVDbR7Ec/iZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D240BC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101494285.20511.10315637185457642158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd590637f95673641860e00ed0e3ab3cf834ac43caf7d0e2c58376143167d78
Date: Mon, 15 Jul 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721014942
