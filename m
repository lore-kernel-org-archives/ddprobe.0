Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ED7262FC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762960794; cv=none; b=dddJA/BwBxeQQryyeaO4+//FZhXJTt/i6RzbpYHUM8Kyv/LTfgsKKPg9mNxRBCHLYDmhpRO+hJf5dZDatkNgEY9MDVJjUCd+O2Eg/aCiawVO0UyGnoWBWAUp37DTmekVkgP30O275nvc5QFKjAdUzmc/Us4ThQztU6tk6UDLe4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762960794; c=relaxed/simple;
	bh=beKK0YMn8Hb4tUTEDvkMHmA+JUupBLXMNCzG9AqZRlY=;
	h=To:Subject:From:Message-Id:Date; b=BoJkKeUKbF3G3MAnmZqqTUvgFdEU/dEpKvdrcaR9cy0neWQkMG+Yc2bH0d2iQCd1wWlI0ObPbdm3BQoZVGb8kmTf2V3uLwX+jsdvVyrrTulGnfPU3I5fNiO++JHzjK27JKcMynsrxC+AF5MD3Thq09Nup7pBEONQAZd3EkeHNQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg9Sz89z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg9Sz89z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17A1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762960793;
	bh=beKK0YMn8Hb4tUTEDvkMHmA+JUupBLXMNCzG9AqZRlY=;
	h=To:Subject:From:Date:From;
	b=cg9Sz89zULW8VYeIEm5I3O1IS3w+SUvllYWf9W5tMj8SQTTEMy553d3J7VJfGK5AB
	 ZKux2gkVg6OVoy/4+6oxjvWYXVcBB7RAmpISdHO4i7cCce3GCTif2F6iHeZhnFeBK/
	 Ox21MuWvL4RAumBiEHMzDTbSU5bVYJpTV0dJRlwuUoYnogxgTR6fV32vY5FCOrE7qx
	 /OqOnyqRVHcx0jSWt5WBmljdmCOvHJj5Fq5lMMKIWjADaC0rXMTc62s5NdzyuRgh1M
	 rHJkiDtcEGYy8NXWb9spXlbHj/DYXhPytH+wl8bfUJNDLO0QKzGgzBgZPw7OjMJdo0
	 RD5NhlHwOnm2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A6FCD1297
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296079359.12281.16727846945689385663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4723b5f041186bfbdb3881f47641c5904425b9684929c58815c054722b23e9
Date: Wed, 12 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762960793
