Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB6D37FF7D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773778494; cv=none; b=QViH3nXNtwj60+214QrObG+l/OHDndV2Xh9XmpNWbWhaiM7ieYX0sFTdAOy4zrL/OLcwgwEdB4F/WcUXg8A7SHtBW1gnc5KEpmb+vZSOYyzcDi4un05ox4SHCzbS0CYxqvY3oVxeHgMbUt46ToG0s5Vg9Vc7BYOYgtAxaFAyNdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773778494; c=relaxed/simple;
	bh=nqomGvnGog2ReP3tGOLwdP5A9Mv/kmk6NHqeknTnBB0=;
	h=To:Subject:From:Message-Id:Date; b=UwSKrBooNGC84I+DxKNghA8ISP9fTgq4zxiwEuWcI+XmzT5Wu6q0w3W9dmwVSs7NyNfco5pXIfWo0gZOGO7/6XerZAUN5wwpig6yIKuUGphHtr737WOXl+r6aCz+IgPTU1hxgB6ndypQ7bMHTguDsykFH3qRqgIZ43ejUea3yPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndXX7fww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndXX7fww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773778493;
	bh=nqomGvnGog2ReP3tGOLwdP5A9Mv/kmk6NHqeknTnBB0=;
	h=To:Subject:From:Date:From;
	b=ndXX7fwwqYAfZOFlBcf/u9rtyo7DVzRx+9oQinZCRWwO6wV4Ttk7qt7InJk6fq4yG
	 Sxy6HkMmds5bHqGWpRujc2ExGe3jpjXC/90SdG/0um1PsMubs1zSBYwGrSLgJKWAW5
	 d0treUyXCQzZ3p1ON8RLxRLmHhiPGmybyWRv5s8q4rFxTYbD35pv90ewPw0ttxQwhR
	 w47Wz2og+/7aW3m0EWFpVdIcsQSLZtH7x3j9tz9l12WJsTzF3NZ6zgSj6leJwgt0+f
	 44TECPDNIEguM+FxcMibNXWvWDyAQyXSRDVNQnm5O1Ccna2+8uR3Ln5J+w/II1uY5d
	 +9GKzLnPhdlZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031BFD707A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377849358.1962.12476530366398127960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ad4e4f13cf4edcb2d721131e528531f35f15ab81066955a8c63431ebf7c56a
Date: Tue, 17 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773778493
