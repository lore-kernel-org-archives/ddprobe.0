Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D80638F93B
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786751434; cv=none; b=gUfKuoqcY0ZtFqW9XMcg+CfGqiOUDx4xg15+sdoK1HSpvXiu153yg8mV28b3cPngkT+iZxPBCzzDV6o2O/cqY3o+RCPZ4gZRJ9frPzn+cV7rxVAwJgZjEFwCHZ9gaF5oJj6zd+HqHjJb8iyg6H4ZaXZJa1kPJljxIpiXsiJp1p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786751434; c=relaxed/simple;
	bh=oqFNf9mUcRIzRUs6SB8RPFvBGa3RidTrkr9aKHkpoPQ=;
	h=To:Subject:From:Message-Id:Date; b=XqPbx63Y4FwJFJItMx6J6e9W1kFQ/8269P4Z171ldBsPm33tvKHjDzUh8yswNBMXJDVQ+EYhlAyeJLq3y1xyIps+UZz2YA3Eb5zBm32uJYwGOfd+RyERswCRo7GlFLgebXkf4cNOcN/M/7wP68t1WQMZpO7fcJdLaa1s2G7pUdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSqleDBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSqleDBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44C2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786751433;
	bh=oqFNf9mUcRIzRUs6SB8RPFvBGa3RidTrkr9aKHkpoPQ=;
	h=To:Subject:From:Date:From;
	b=HSqleDBdYZZ45jnAQ7ImHsLgd3XqHnuMmP18YJuRwGtLxMUHaDkWcWP552E25IG3D
	 qSc+lcww/e8ombWEp0Q58vG7KXGAsTtuQ1o5lnseKCvpEINmfw8AnpNqgaHoeHXMkJ
	 99jwgL3gO6K6TmhWP3fcGI8TKdmb+lFThdlKywWRuAici5SrB3J3FOcsAEKFDRqf+l
	 v0OKWQ91iqrPj3GGZM+CjA6U8nYi0koOvpO+vGihoJifIrfdvBjRp4auw/18evBa9Z
	 9hW6TGQQ1YCh60C47fRvQsXl7usulS7A6ux+sAgx7dwLamcJz5jtKeiSVbJVdV1KJu
	 fgD/tHnZQqxhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B8C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675143368.11202.824009513121328432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff7a7470f427cd946d64187f1edd5902d690f62f18067134778419f5d347681
Date: Fri, 14 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786751433
