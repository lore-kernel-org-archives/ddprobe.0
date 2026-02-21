Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A6034F478
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771673094; cv=none; b=Y+jpGbgJ5Z6AiPPMMu/EvwTq0pC+AKl1zV3t61OxbJXKWepX4bok6NwhTV2fl4I1fm7FJiGWm/iyI6SjxpHqnFm5eQo5ViKg3KXkOQiUpvqZU7IOHq7M+HrTs0+eOC7jWcXOeP1Dp16xW45GWWLgypYx7pJztDdK3fTCMKglmQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771673094; c=relaxed/simple;
	bh=4eaLv68kx+ut8IIOI5NOShGB8IN/C1fVmRPbCsH2EZ8=;
	h=To:Subject:From:Message-Id:Date; b=odcrNznK7uTKvB+SDTAFmAvTWS8oEDsrp6xeeBSrZ62Ex5rNRb/hTsnQnJMLG8Xm+1oBOHWvpbsKo4ZYclWkFe50XwgoQNQ4RTKQLhfGFD49jUvWoD5slbbesMaxwpG81IvB8yHa/UuEZSubzfJT7aweWPOI9f7PIKMaBm4oM+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnx+UcKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnx+UcKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7059C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771673093;
	bh=4eaLv68kx+ut8IIOI5NOShGB8IN/C1fVmRPbCsH2EZ8=;
	h=To:Subject:From:Date:From;
	b=Cnx+UcKavHSDUINLxva3GEULt0EUPKBdtv0BdZUkF11N9620kuy+dLPQV8krvgKLL
	 It4m6HONy3XZay8w+UidJuk6CkUr2AaylCxDnbebQkKZRRbZInaOEpJSQb0E+VYc0m
	 I5Z3tfYRn5G5bs+k3p4CWJuJUsmFAHdzRBC9UQlUbvbj9j2QVrptTabDzmpYMdIYV9
	 GfOyZKhXtsLoRM2ypodLCSaqLpVD6sMLhJc8VDTV+NGmx7bkrWOnzqz3WQv4QFSQAl
	 1mQVn5XVamd8RpMnmiJz+wsZHy19FliuQC2xwOJ4lLq/Ic7SUVXGfst9UKoMdujK1r
	 4jHZ0n/RqwNYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66B1C61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167309359.5215.6519875558916080463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ce40a14e893ab8ac37d1a05c6a9e44b4ab620c6ecf430e0f2c9c6e18e41113
Date: Sat, 21 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771673093
