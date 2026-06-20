Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6CA22579E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781941594; cv=none; b=FEHLWqnmRRuxJ9+Qk++E7X/9EzuxidlWDhCvlLLIgvDdXlJX5F2Po48yItFrTjB8TlgdzRFyyRz/SmtDU902biRd3gxY9pfVkACvvKip0ZLxvPxiNWSMnz9SEGHtlmklf6IJYVnDKwMMj1aZMWOcDcnm5wdRXuJEpD4MP/UGpE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781941594; c=relaxed/simple;
	bh=B7VwQm+pCHPqLBsaIheW7JiZzKIFqONeAIoHOANyVx8=;
	h=To:Subject:From:Message-Id:Date; b=eJAXLdgGkRaRZJgwABK6fQIqwz2KgAwwG1CFyzB90RFqxC+08R4UbH51f/i67LNBV+WkgZsVBe1pLfQnNTZZdRw4I55xKa1bklX7Yo5kgdXmmfs8kEzlDzsnDn98fA8zbnZGNhI/xFu+j8rQ3UKI+4e5uIzN0P0nuRbxQ6f21Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITtMwkv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITtMwkv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0442BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781941594;
	bh=B7VwQm+pCHPqLBsaIheW7JiZzKIFqONeAIoHOANyVx8=;
	h=To:Subject:From:Date:From;
	b=ITtMwkv2Ky1SbaeugpMS5xqf78ey4Mop+6PtrRFVjJE2LHdbQScpwAxKDq2pXCtz7
	 a3MubjVVvQvie2lF9q9G3DFp7+W6gEQzLg4+rns4G9dIJXHfreWl2DbM9q1oh4faud
	 hkzWVEEzCeJ3hqgKkTgeOIYnJVeaquc8PPpkZTAUc/eRmdYt3FgFHhYgUrpuQYteWO
	 1puZJ/N6U2e241lA20XLBUs69APR0KwvDAcMfz+/RunRzS3U2xvN9H+nomG0KNeHLS
	 k9k/DtIt8ZvKNbLXcopFcuuZ0EslIPlQyEt3xUjbDE0GMX8/It6KReQrNpBKHvV+Ru
	 liLdwRQiUmQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C250ECD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194159374.8137.7206837795948858957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f3fa784075e5056454b201c48cee0281013cb71a4b4853dbdffbe0d30f4399
Date: Sat, 20 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781941593
