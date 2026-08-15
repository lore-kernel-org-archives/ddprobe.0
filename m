Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5538C3A1C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786788034; cv=none; b=rBXHGYz7aRCBLF01tOFRkLtcDeHFuCZ2h0w/17Ex+IleiegnH1s83+AqecvAWI9YpTs92afP3o8TJ32XG+Fv9H7jf+4nBW9PPsZlwdTX1RgVgIZRerULXZTcX2bNVXNlhDuKrw8lmm89g+81nm5lgxY6Ih8fk5yR8oVwD1LsgmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786788034; c=relaxed/simple;
	bh=IqAbIENZxFzhUPPfsPIc2vEHh9wPSJj653lEuQA3Mbg=;
	h=To:Subject:From:Message-Id:Date; b=Y7v/mTDyydscyv+0mw7CxYOrhK8vMjfO+R49kRbJ/AZXJvC8kV52oc9pmp3NwteFndwPxhBndV3VcC1tSWXZvZQHcWMR9ZOLa7Yhz7GL4sIbB8EoTYw2BAi3mDxCoV7kz4/nysXvwdmqUtfWNflcf0dZF8oTPKUPzUl3U9jHhoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM3Uzm1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM3Uzm1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7127C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786788033;
	bh=IqAbIENZxFzhUPPfsPIc2vEHh9wPSJj653lEuQA3Mbg=;
	h=To:Subject:From:Date:From;
	b=UM3Uzm1qvxTeoQ8T3ukAqGQFFBem3eT+HjkncOeKm96XoSbgTRNOrVNmj4qAihSf2
	 sLjidUA18lWjJCUeVot1LkyNVP/COsYVeso9mbfPHbGzJDyGA+YyZ714UsFKgfkjp/
	 k5sOrQqoiiNjK1M4vINbewCy++KzLfmipOlrrncgXvXMsG3pwAxX4dqBam7BnXqG27
	 yZMEimjC7OWnQ0a9MRmB8TZG/Ys6EZzBzNaT6HCPN5lOFxzdb7Ek8zCsfZTRvrl6Sb
	 5QkaUcUiEwyah6absZ24leKKsTQdPRq6UgLTbgrVfaTZv/hsypjH0Ujs0kKMtlkFZs
	 1o58kJkSQqCDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B227DC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678803369.32058.6949145162837781118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35594f237710191ffd2ac659c51c59c1f39a4abb6cc9951e52c9b4c12bbcbca6
Date: Sat, 15 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786788033
