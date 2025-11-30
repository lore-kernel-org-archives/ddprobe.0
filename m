Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C971D27E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764476574; cv=none; b=nKylniMKQ+idALvgaBTvrJ8ZI88UU6LY6CpqrwQd0FUoksji0ESvLqwMbfS/NcVPJwHlhAY0iXXaQlJqoNHiZuHYsYHXNzCUsDOE2ejufQI3yxYqy6fs3HeaSvnfoM/BZBJiXra6IGNHrZzeb0yzKyK5PQ3jt1vsH8yrGZHWEi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764476574; c=relaxed/simple;
	bh=VkGPaevfJCBInNAJAj9C+605yE+TG6EFKp4Lo+xLMTU=;
	h=To:Subject:From:Message-Id:Date; b=enp+utnfk++dQP98mYPMeXaaJkMngmqZN/zjRQ/O/AO+OKel10Zns7wqfouAUWL7QMtdMIokFQCUyWL6aq+9QGEb4HGvv1CnjX10ZF4LrakgR3wdF8j2UZcgtmLi6yi6IRRseXGm43oyDxdNT4IUgnQtHWHMe/6kSGSCUYRUsy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhB8Qs0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhB8Qs0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E0AC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764476573;
	bh=VkGPaevfJCBInNAJAj9C+605yE+TG6EFKp4Lo+xLMTU=;
	h=To:Subject:From:Date:From;
	b=XhB8Qs0uXWO7gRENN3mo0X5sRDc9BfxmS/8ZwhROmAvxAV+FFeqYl7eSMT77ClCvn
	 J2O/eR1fNMbaoDOtvNbeeqUvZCZs5cPmlDADJIO1SKJXYIdEcevoKJFkF8g+73uKXZ
	 mBl0QhkOnZQ8zUK0jEaiWA7BG8tW+0Ah4o49krYpP8qpG9QbzPVHHvxKayH34P0BuF
	 5TWhMfvSrSsys0yMduzjhMKlQeUN0LiQ9lmRqzXhp48RXNcDMNeefilXLTiNYm+szQ
	 Uq35xzV9DoAyD87OntbG8L0cpEfW8nZ9N3ZFHwBt45XTlm7DrNvzhYCWbzfdQIJd5e
	 AvM50EBnJHxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659ECFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447657359.1117.6744023972862717079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85e9e6ce320d945ac18aec5d52d59341cadcea3f4517eb85f072bc3940fe518
Date: Sun, 30 Nov 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764476573
