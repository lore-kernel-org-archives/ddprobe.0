Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3787F1E519
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747493994; cv=none; b=VCmrb2k2BOY46STUfREwqw130Ivb8wAK9XjdPY2ZMjH7hodpPbukgXOkVE4J4ubTPuda3wuzBqxka/9kEY4uCZSZPbXhicxVm4LxO0bhcVkF8DuOg+QG8e9N4GWt1NcWQLGUx058ju+e+Y3Gav+dt5d8ClaoCllHBpHn0KbpYrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747493994; c=relaxed/simple;
	bh=krc4ayGaGFQtHIf2goSFJtqYmctrPhlNWRDJpMKBZkY=;
	h=To:Subject:From:Message-Id:Date; b=FuGaGBBETnwqjmH5EFhpZirnCC7LeyR9pjqAks8zzH+rtqw5E+fgDZspwBPGSc6yl7PcjxNYohtVLLh8YzxicCizf36c9V+D9l0DOiOD+xCECN7mQiC7vXpPfTVgaCBfZZzA5NadOURAtvLdOb2rBCqPkeI6qc0HrhSPnygGWz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caYZnPvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caYZnPvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A071EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747493993;
	bh=krc4ayGaGFQtHIf2goSFJtqYmctrPhlNWRDJpMKBZkY=;
	h=To:Subject:From:Date:From;
	b=caYZnPvVYAm8FwVQmv70BQDkgGDYk3Nq1jUxjw85k7a6RBspQPzvMZkifl11QkSKC
	 dPpnXLUHDh8Db6GZzBpB9LeUUuzWLgEk6ClO9jtD25sgVWVJGytjlqeMbKMqcMwRXF
	 V3zbvXNoO/2ZTkgCxTnUa57B02PoETA1nOudfhWCH+uZtMTMAeiwYFyz/lgAD6j5IR
	 5CLYKSz8vxPiaXZ/7BHQMZ5xWp5lybCslnJf3nC6Q/Caosglo+PFtaAA4ZQETkc+/m
	 P7yS2iiR24u7OuAO/OLvMTsLZWp4SX+pgzhXR76PZt0VZl5zbOdbdPafFnAPRtGAsu
	 zK5sRdtYkWsFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE43C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749399357.5359.15634599864043158215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cae37ba39e69f2d1971e2b27748950a900fdb146f19e1bd6ecdf79da2e8474
Date: Sat, 17 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747493993
