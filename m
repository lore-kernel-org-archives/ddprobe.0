Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292401A3166
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759804794; cv=none; b=tr6h/er3/xvnyHasuA6QP8hq4q5GgSmHhlnoArszn9NZoSFG+zysvxZmu2uYcQCHOvZBZ7ildVpYtiXLISeaz1ZRYi7Ktm73fuqqiiu+xM31lBJHmgxB0A7Qwwfu+fPuIwTlFTFA5nN9qBpag4b78jTJfoZ4/Vh2hr7i2nxWcm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759804794; c=relaxed/simple;
	bh=3GqtbhjlSj8Ga7zFvN+aj8Yjj2UcOgARazG3XCUZXg8=;
	h=To:Subject:From:Message-Id:Date; b=ASnqTFLBF3ku3ZD7lKUCnYywKh+jDS8CWuNCvgwV94+wuzfjkuiYVa4AmH0GQ4JjmPUewL4FV9rhG8pD4CflREJL68sKTiP2GKKWWtqwVYD1BhRy0ANQOOHJaVWuNXX0YJUhlsw1xR0ABdkm65T8mCjUNsuXfZ6YbGlQKAnyBQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQoDScgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQoDScgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759804793;
	bh=3GqtbhjlSj8Ga7zFvN+aj8Yjj2UcOgARazG3XCUZXg8=;
	h=To:Subject:From:Date:From;
	b=jQoDScgL/60nH6qIi3yaBsMbYRsU8KNGameGUvmOrRcwfquVevTTAFq4vAeb10gCu
	 jXvktvu6fkcu1eX142KdiHP96YYztkcDNP+sx4HrkE6h0DPXpFh1B+HhaaV1MrITS1
	 3cIaDBg/nyisJcJsUHC2DGfzzEvM3uQ7OxhEgwNPXWml3OUvwDi4G8OSj9a5r2ubwD
	 /gbG0xSE11oV/C9rQ9N1WBy3Q7C+UxLtNa2FoWkrro5Yd2/Wb9OCxnGm7yJ4lernPH
	 HbIHnX5q0r2gKCZPgmS0XiJtYvptUCF6twlfIA//AJTTB6s2n8XL6dWnVzahT/eaYa
	 dEdoeUhglC38w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9ACCA471
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980479357.7134.9015030675842636027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bf652eec77396e19662dd5e5c4d69c56c60eec984b0beeb7afa2f3dac2c361
Date: Tue, 07 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759804793
