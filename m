Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92636204F80
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742298594; cv=none; b=a9wPngYqaa+NpzD/ndV9At74nqJnGXOxuHyu/eVfYJjIXWuEhG3cwpvF36ozpnFkgyMhSftGl32mXlpw1MLmKN4n5vtEjLW6Z/D5LSMeevZLD2GuWltXUvu7afyiwDEFRJx2GP6QKFrCPxS3Wc6C1PQIogXylpOc8k/aQ4B5EOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742298594; c=relaxed/simple;
	bh=wwLp84XvB0fLG48JfQfq58VKHGR8/l7TrPQe2pwXR2s=;
	h=To:Subject:From:Message-Id:Date; b=cwfNcgkn//xed63d6STxnJPi02K2y7CkpOTVmXV1KNNX0L/c2b4UVR2x7amtr0jksg7miUUTvSy7UAHtlyjvruNtfXQj62DqDeO3lBskwxSxEXv2gxCIDp9H8LjptKODcicqePWZvI41St5q25GlIqHC2RzbCUhXoAyXehE8mRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFj9jEt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFj9jEt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1068CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742298594;
	bh=wwLp84XvB0fLG48JfQfq58VKHGR8/l7TrPQe2pwXR2s=;
	h=To:Subject:From:Date:From;
	b=ZFj9jEt0gqlCCrcfb8I/3iSi5iAeQKS1CJOESN9TOCrnWJnbpiGVN1DyrE4DXVe/w
	 zGQZ7y+FPbJP3XkZfhcCdVy6RrGo9K2kkKJ8ZH9RQdwp9iTESwYhUCdBfm9HOzWLiI
	 ULxX8Izah9UlYYUQJuhkGE+vuyKGkFdlo9zZAyxD1uws7jj0oYjTEBFeg9kOfnVfSK
	 czpZQhldaQVgTa/LKMBv9IwQpAGcc6TYd2WaA+Ow4fwMG/Kwh861BFt5Y7GiB+Joxw
	 KK6N3qKzr7nE/h2uShnWTq5NH6013OG/O/wF4UVu1DgzzY7HnmSxxKE4hgNctz3jkz
	 KgX135EWbSUPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2930C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229859381.16485.18054663834887693868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c921955db0fcfd7b099c239b2aed5b7cde9a860342c5a431b25e981101a11e
Date: Tue, 18 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742298593
