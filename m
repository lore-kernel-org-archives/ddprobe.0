Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A71D17BD9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748752795; cv=none; b=LabnYZCYAxauLsXyXdbwDjGwTRICV4/zqTAKn2yEK2heWL7YFEmKmsDb+w/Hw9OK1V9oCJbm8FRKbvz1dsh/N+E0/xyz1ATm9+wM7WaY3wrAqyqDk3raw5UhgjVbAI2iHgcBTq0XwSBSh5ZFPg/X2GTcLlDmxR/aOJpWjcljUYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748752795; c=relaxed/simple;
	bh=8ov6Mt/gyqcEhnTfrv+wsPqAARkkMMi+kTWT+fK7x3k=;
	h=To:Subject:From:Message-Id:Date; b=BLxzQFcsPPfxlmN5MKnVj1uv7XGQvVmmvMLLe/FXILRiarQUXuXIW8/bmr6iXAUwzJ6C+gQd8JraOtDEqBnL0YeDVknk/sY4/vP5EgIoYaMvwTZDkh+s/XXEcVVqOdHotiI07AVm3ig+B5SMs0JqNX2uursDCfZsAGF7fssnOs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYkCq+eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYkCq+eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A978BC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748752793;
	bh=8ov6Mt/gyqcEhnTfrv+wsPqAARkkMMi+kTWT+fK7x3k=;
	h=To:Subject:From:Date:From;
	b=UYkCq+eQHsboV9LHyW4F+uWkrXD5OckY2ze+kCOt/C2VFVf8rlaiPC8EJmMN993z/
	 3HJ50ZVzr+WVcxkK8qwMuXFrA94WC5+jB0aLCQfFx5/ayxICUCwDoC5N6Pj0o8/aq/
	 9qnQz+b0BzKOKWVp7NdM5oqKZmL7SYViUs0yBQLU/3fmJ9Fx1keaIgV3t2ywMq6FNr
	 OYA2NR5lungN0Rw36/7Gu8kn6996fxXjWfRv0cWPGMwCbYi5N30TTEjrqF3xFUYEl3
	 t0owXdABy9aIjw+ySxpgPLKvFLjDdjKXtJ/Waf4RikFbfHcayyaVUWqDczmdF2f66c
	 IavtUfxcBgPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1EC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875279357.18590.1345583213499907305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c180c03880895b738786e7f7a34efd628074550ea6eb709430c81a244d0cdca3
Date: Sun, 01 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748752793
