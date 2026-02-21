Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7CA1D7E42
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771683894; cv=none; b=mNktiokWbRJ1jN/xbCYTnq4WNAYmmnVkhcl8vj0WFnfZwOa6ass/Fs8n6UbAEyaBdpyz43xe2Gtvn/VXsOAr/+YH5Hv1JgKFOqz88X3QpMihcag4DCngTtVm29aJ8z6YZOT1iMXNCyVS5bxdwo0itsgfadcG2W3wPueRK9SSEU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771683894; c=relaxed/simple;
	bh=HTnNfQXXARvZr2hSF6HAkfzp1ez0gRrsITulYiBNPzQ=;
	h=To:Subject:From:Message-Id:Date; b=Xs1hzK4mMzkcx9RqDmqv3yvhWwWpjGCE9WP9NlOjLOey5HlpVFFlI8BqceF4+VFsQxVBw6EvOLXBV8DAtMFpAOQKqFL68tIa42o3U2npKhxbEkoETXMCDAP6BegQhxii92vlNzYUkb31i8wXDHRnK7A0a1aop/6ivfmMNto+SZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT/Mj9n1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT/Mj9n1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0425C19424
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771683893;
	bh=HTnNfQXXARvZr2hSF6HAkfzp1ez0gRrsITulYiBNPzQ=;
	h=To:Subject:From:Date:From;
	b=tT/Mj9n1eXDlkWbxDdWuU+US3x+yW4E0vZvjRyduhE+5QUSdWdT1pgMSlb3X0N3hW
	 uvaAyaSQgS8nwrVYzrpi5QToFuM4dkaGj9PBH9Xlc9YKf6hRsIdP/q7jIH53x1JX9Y
	 gjvmL97sPiNUpbd7AZngOmIYT2skTkW13m81CUbapHM+K4CMen0VbNz9fjshQNyisT
	 sLVKjrINf9x5hRpJgNeev80Z4OvpKlhvkKToD7xjnoUzXDU2F+yDauJGmz9ag80MGG
	 eDV+Nn5WaGoR0hxzWrhGME8IqYnAJek2fjLIz9QhNcAV0/oG4z0Wosf14U0h828PZL
	 tOQVYBN6FxRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA658C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168389367.10083.17389350957875280636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356891fbfca193c5a717738590d4e74e1cd072a1308246b77bd77bed6391e780
Date: Sat, 21 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771683893
