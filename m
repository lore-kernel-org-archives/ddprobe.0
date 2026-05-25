Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C6933F5B2
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779703953; cv=none; b=dF6vg5SiKgy/dq9NRHXQDj0t54Vxata3YBKhZ/xv77xjXnubRNjb5Ug3TmrMItxirEDIb3egc7tCL4PRrbvNwULn2t7RQ7ueYHY0OSRW0kqzciDmAc11QmHdKn2mZi9PR3fv1MPPS6zA2uwBvTwnkPvSMAzv0CNDQKvUXEQFZn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779703953; c=relaxed/simple;
	bh=w1pN22uTQaPDz8tAYa1Qfb+KlK9hUppb/YS058swG/E=;
	h=To:Subject:From:Message-Id:Date; b=Bu1JYQAugRDinAxFMN1W/vkxj8AaFLgKayVUDEW1IjKxS0Q3zWJUdd3Eouxr0YrW8t1wvkWRPd9AG5U1FwHny5KA2+FPtoJckHAWf1T0kh3HWjNfGNrhllRDhAhBbCwQEL6RqXyF0SJHZLP6ftDxEtZJKUXrDemQsHeooxkz9qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAFKdlhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAFKdlhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0B4C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779703953;
	bh=w1pN22uTQaPDz8tAYa1Qfb+KlK9hUppb/YS058swG/E=;
	h=To:Subject:From:Date:From;
	b=DAFKdlhUVF3uAEF7i7GdgLoctIGqcfUndlRxOltj+LU+NZXQ9lVGaqo7ArYDHPxgi
	 +c/VXu9I0C6ONsfARHbxY0Vw/U/tmlS5YtFqDCP6Rdx5VsY/mSEvc3UMfE6ejCAhaV
	 T8zTObzQvcdm7IafM++S5DmzknBixez7mc/v/mZJP0vlB2JXbVzFb4Hb2IGyuI2j2E
	 Nr9D3SLndaI5F++9Ti4QWyI5knhBrv/a4RlKQUu5SMaduQjgBrv2WmePZ+ExrluyTz
	 t8wcL/cLBDmm+2lJcLt9RK0NUTfyn2ykQoxCPvA8FtzwzTG0BadNtsuEZzVBrbTOXP
	 7TVeyG1Jrz7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16F6CD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970395371.11291.7676742715337951912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245e16918e126e977b4819a943be1e047b29ff98bd4e25d58dba29b63c623505
Date: Mon, 25 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779703953
