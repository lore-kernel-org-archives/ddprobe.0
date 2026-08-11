Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6293E3603C2
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786473634; cv=none; b=poMcMIfGKfIMs5YaE26Q8OAe5McsRFGjg9Uu3TzrNonXIPscue2BHbCGL9kDjVxD2JwH/2RbZHKGobnW4aY5qJ3CsqGkoDste8cKnbZ7tAvLkqq2yGwNprl91XguGkOxq2nN9U1jXRSWoX+iwN6i0mseBNG6pmkoeqI55bxiuc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786473634; c=relaxed/simple;
	bh=GAoG1bj8k6fIbkt6hFHzSC6h4yXXYp6eYxJZuicFp+w=;
	h=To:Subject:From:Message-Id:Date; b=F5kG/4c2AgzavKZiVoAvw+/E0/br8UXLz1Md/8resaHPt/flojo5PReJdiDksP9s+RyTgYbRYxfORJrd7G7UUBULmcc+GDcL2VG402RNQBqTEPpZzfdtbnWHvTk7b4GGwX4wIu+o3O/JXVFtSLUdLfER/G/kwyFQ0BF9/PPfr7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8OFdF9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8OFdF9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD747C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786473633;
	bh=GAoG1bj8k6fIbkt6hFHzSC6h4yXXYp6eYxJZuicFp+w=;
	h=To:Subject:From:Date:From;
	b=B8OFdF9JVKCO9fOENOrRxQJJ1/3CFc7fugdq8NH9mwC/aaLzIyhJGKbpty99kPp3x
	 Y0a17yk3d7yxjyJQePviLsaIvEdbilvAgdLDoOSdWyZFjJ+oESnx4Itfj8ZR6irWFx
	 aQzIKy3ibihsoMcfYEASI2qwlYdpD5BTcLDEWK5Ue9Ozd8VBimtSPPFNQUY5Md0IAA
	 4+6gtTdp6ljHUGzh+WspAj3qOwbiHOzRdEew8P1qemVx4M1tmJvTxMD//06xtW5mJ0
	 MFPKi38v87WDIqPhBkb/g410sY9F3/weyZC33/LKciU1/UTsOd1pDz+W5lQx/6FMe+
	 O/Lx1UL7Qtlmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF5C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647363368.31666.14087622851330593814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96187e3ae90ac510b5131d31254eb743f2a648c7479d615ccdbcc0962ce140e5
Date: Tue, 11 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786473633
