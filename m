Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2C3331220
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779300634; cv=none; b=J+Qo3Q9JnNfPFbNHvkXrBgduEMe5onbUW3tk7+tGHLtD8eRwMZhfViJ+dAJFCi/R3Dd7iv5poPr/lWMoBL6IoJOHLypDNXr/P0qh+Y7ZYyCg8wJx5Mzs4lI0kD8C0Danq+3UzmpB2USSKK++otYqUNBtebAOi9QU4XJfK0DUdYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779300634; c=relaxed/simple;
	bh=c9plP3VaEwU4G/5Ul4UJ1MqbvnOPPyAv+22MtyfSVUg=;
	h=To:Subject:From:Message-Id:Date; b=gUfggVk5F8M7hvrlepYYJIYUPBqsi8H5c8loAwR1EPFHjaytXihFGfDgvcbAtJKc+361UxGe0TpgrajkOWjLa0TrMBnUUx7hPjLn8+7YZXjCrp/PfTnq0AWpfDEhhH+NyRC4BjPp3x5mJWVDub4M2hWOlyAxXK3D2H1fz2393EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxoNRMsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxoNRMsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BF0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779300633;
	bh=c9plP3VaEwU4G/5Ul4UJ1MqbvnOPPyAv+22MtyfSVUg=;
	h=To:Subject:From:Date:From;
	b=FxoNRMswkkPjysiASoEwxgUUMdBORlkncHkQanwpg+eqyJYgospxUacGnPCAhg817
	 HuQrl/n8CaoW+xd0iQlOwJl4Cj1JPHaR2xqFhNVAwyqKWZfVtdtwqMb8kVNKtowcf7
	 EEzkPsrpIKn+tKsrVGsthlJ3gbzebO3Xj5PmV52R8gwzybAN/bDQlXBFvmTdG1fnig
	 1ZtKy2+Ui25GOcqaFf6vOI9A9cQfvY0sb+ToDWXGd/lzw3axxtzR8LjjLiQ30AxRDg
	 fKoqVIhPQBUzBQl0+bh79DXjyAw5pqRVfPoUb2A7UQtYKdjiolL0xaaq9tIqnyxr6T
	 sHRBRJJhmwiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82E9CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930063374.30625.6351035898376442481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d1c7a8fc15ddf5cc26a819782a91d180f210b0390de3d26d5776279638eab8
Date: Wed, 20 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779300633
