Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC4635DA55
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777109254; cv=none; b=LOyMk2mLq0wJFKjEP/4g4r50PKPK4vkJWgXE7q1II4L18SMBEIJqLcFH/eDBzqKDa4WpZRNKfZ/oP5H4JRfNRAzs7rVivCUCL5tAOmM2Sbkue3EKiZNjKFb7A9OqFf4QLfICk9/d1nWehY2i5mKy5iIYa2CDhS8p0WP7pZkM8lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777109254; c=relaxed/simple;
	bh=yyAzmuMhaD8oeRNB2gTOSNNohwSwwz6f9Dx19mFwW70=;
	h=To:Subject:From:Message-Id:Date; b=uRXwSyYqnrI3TauR9w4Nr+rMNfkEYjqe3P0axbZuFWILZXJ0T4uULuHJSNeg9NwGRHVUkLKiHf+l4oE3byIejwD+eHlHEVXNKBe4NYlDsIBPg90oGAGhMts20Tvam90FfhSodbI3qMRx7fA60Fg5TKEVBp/ThLmu03DS2bjdvik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGQvTBOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGQvTBOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D69C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777109253;
	bh=yyAzmuMhaD8oeRNB2gTOSNNohwSwwz6f9Dx19mFwW70=;
	h=To:Subject:From:Date:From;
	b=lGQvTBOp1vY0kAwAGcbIKHEDignGA7t/lkSKmrIt6UURdnl85p9DPeagERgVYqfLp
	 K5ansaVfxFudYMq31DRKhLzn3Vz2R84nXbGuD7iniNu4/mcSp2qXthap28ANh/aAuA
	 ltOxw+gnBOighEC1pqxj8LJBWGLq0YwZR7LyJ6k5HNu7udDqC7N+kfbmsbYZ7/MtLu
	 NpkzRM2N7TEAolqSQs6AzKqxVSzdjpYhtuYu+gh7VjgKSqAAac48UBOFV9oAtXdt7J
	 /KCE5PVyFJwYznjmyviW+tzvNe/SSqWd2nUo17TcVeD/jGZDLqUoSvS/7jbR/gvcdy
	 lQJ2uT3HoCWwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE92FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710925368.20784.721147308839848575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fdf657cf3e05e55d64837ca0d19093ad03a5bb17576ef1041e784470613ced
Date: Sat, 25 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777109253
