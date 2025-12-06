Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CEF1624E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765051374; cv=none; b=LGefsqL/CXJ23jMaadosoZaeD9kqAzEaZjRvPwAU/Ti2Keo8TfRrTAOYD2S7yUeKcizMY22rEUISeWSyK8da7YdQVdnsu+30b7WPdx3wXJDCqFauX+kJljn/hN7JyXKQqp9T0PEYVfwMNB+d+YGt4z3nHPbVjqPCbWaAwArJTAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765051374; c=relaxed/simple;
	bh=xXfem4h5/gOwPSePyd04lI2qezcdYsoKJTkFLoae5c4=;
	h=To:Subject:From:Message-Id:Date; b=eFiMSr+cD33Q2UKj7drdFJyZUgHsJ4qrDe4ZoTKyJEB9qsLtNIhANuk6P3h40aJa7blK+6u+5AzjUD8pXqFiLx9dqYFpJZEi090ZLIiOhp+SVBBPp6C6BPdoBW7MQkOWw7ZiUKdKBmkoU/fyYXxxbkIBxy+cVHN7m+YhNrhyRMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0kwz2nS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0kwz2nS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EB7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765051373;
	bh=xXfem4h5/gOwPSePyd04lI2qezcdYsoKJTkFLoae5c4=;
	h=To:Subject:From:Date:From;
	b=M0kwz2nS4nkKFPhb0hb6E6h14Ctal6//GT8N6zOhbaNwYdMGdYdnHvRzh1Eg5wM56
	 7ZCziFitU5OgNhULYozqL/iKLY3v2UszqiYpyMdfp4bISXQRu20/BxoNyxkCY6LkN0
	 +R8JFR8dQD1wTJRp1JKrOoznAgsVfoEY6O21/qsC57jQSJ7T9StKgX3kcYezfrKnM2
	 i0Q07tOORIGRZ04zLO6DY38gBkYWzxg7amGm7QMiCVTHjRAUaQXi6U+vMpEuHyeDM3
	 nPAa3mrVGCG1XF33+HVthUJit3f7Za3H+D+5/Nk0gauzFOvNmJnA/IG27VllB0Iufb
	 QMmSS5vGn/JsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FDBD3B7DB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505137366.12454.4002707135410425258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46d652619680e99c780ddf467965e6f6378eb1bb1eb501e5320314cc38717b8
Date: Sat, 06 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765051373
