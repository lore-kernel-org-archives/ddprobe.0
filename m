Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCA31F1527
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749317994; cv=none; b=mY2F23ppNarb5g3Ezj8MyiENmMY5N3DH87CrNgUQfhPhKaYPHSb3RPRobQzPMyPj67dCFtx9qeiH7KR9T0m3bkTscFCXB5xCCVoXr+GlCphVxJO5Oimymz3z71FNngCVzBoYIAMceMO5Z8fD979DWHKfw1m+vEjZLKs6TfAS1qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749317994; c=relaxed/simple;
	bh=KT8RuU2u6tTa7VneGTSfkSDg8ibLzKfty0o1EZBstEc=;
	h=To:Subject:From:Message-Id:Date; b=atZ46barKFQNgJ+mAZEL4OL2m16pEv05gCUYAOtip6nncxANqs04B4BtsYKe2+suq9wnNNSjTEg5P6l+WcS+QthHFFOugoEwrOQhl1o5oqh77GQhaELaWX/B+0G6xHMIZQG/eyw/PqLSm6+iJtzLmVsuPFN9EjrCIBuOi40032Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkGXKl4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkGXKl4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DCEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749317993;
	bh=KT8RuU2u6tTa7VneGTSfkSDg8ibLzKfty0o1EZBstEc=;
	h=To:Subject:From:Date:From;
	b=UkGXKl4W1UrvXN9VcS3lQWczGppZqeKliLMPGWlkkqlpzMecGZldXOkAjXZdSAUSq
	 GvZkDSLUw4rn7eJVos1yUiwqtdl59l4XW4oMR47PfqTmVPQmUPOgVhn9qnbNidOg8s
	 +wJO7DLr1za0pXyMvAy+xyJ+qDQLEYduURwUAfgB9qAMCiep8PUGe2KU+yW1Q6wJai
	 PfClPb3H8t0vdFLkcu4TIQGyp3vZEOMykcK4ZX4fQf0myEuhj1BMLcLi9DLzZg/WSc
	 5UNxqpLnLu4jo0ovoAEPZrnJoYgSE1X4kis6+j+JFAYnEy7dXax1oqeoTjlKTVAJEa
	 a5qhFCNxKRaAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD4C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931799357.15651.510211441505687622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16f0093c84337d545cc52746e587cfd5c3c0ec9fc9334a95dbb2626ac297a28
Date: Sat, 07 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749317993
