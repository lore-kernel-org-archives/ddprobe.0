Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191A624290D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768286034; cv=none; b=P8AHhd8OhFPxDkB0GD5Pi49JZ9C2IULEHMksl99VDJTPBPJ3+ClDaYIWuXbnEHdj0ve7OsZWIfUHo7VW0XjOF9Qv9Tj7b6P2oC7fcJtlRRrLJUu0tXPQoQyA/T7/hTd2/s9X6exPmqmxDwc/f8PFWKUTUWrcfD79X8JABAfpwY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768286034; c=relaxed/simple;
	bh=mjuKKv2TYTFgVs8xa0yS070KeDkGq6Wr3fJHyJjpuMw=;
	h=To:Subject:From:Message-Id:Date; b=kW6ldc1zWVD4ZX7jl6j3Bh0dwJYN0nc4hUfbkIvIS3xaaaxHD4+MXOx3pxdgPC82BGPAYvILuMaw8XNKafyo2BvcFEjRvNLDVKhZS0iIJS2+Pfc2VGFV2OtLjCiKrQTPQws6NLS2nxclqNu66BJeX2N6J28dnpzLl8MkW27IkMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox/CKvvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox/CKvvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A64C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286033;
	bh=mjuKKv2TYTFgVs8xa0yS070KeDkGq6Wr3fJHyJjpuMw=;
	h=To:Subject:From:Date:From;
	b=Ox/CKvvH/CaCXWFLb1ktpUVXGB3YjqoanQaHPRXXkILw0V4mG3K2LsJukxkQ2wqtW
	 ikqUqn6YpeX+l86EKHv+lv5evSfn4FNs5PNM3TfSRtjSZp9lgIeaV2cbNKAWS0Wu+L
	 GAECOSoyyyep5ywToDkZEKl9kvsgyF7KzuF1U8GpRmoal2x8aAMN/J/RTgebtcMPLm
	 YBlYY97TUWETrHsIZK3QiThwbIiEYcJHVnLk+sDYqBxrLTMsb7oenqiXspvRzyRoIc
	 jr7dJNtYW+VwqkklzdgdSSBb6XrNXRUe0qFtV2L5fZzs8gIT5WIM8FAj3fPJgSpNug
	 j9mHiZ72tFshA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3ED29DCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828603361.6689.13164451054873158900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427ba321d584522bac5bd03a073645c83ff70bf7bee048828a697841a64ae2e4
Date: Tue, 13 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768286033
