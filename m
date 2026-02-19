Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA792E8B82
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771495494; cv=none; b=nJJfHoe4eg7zaHOBa4uIXxum/4VxfKxYFhG5fm3zG2iyKN2Gnhr0xnlj/2YTG0RbZaUuTTbnk8YSLFRy6+Y/KhgIX0/bbOif+pTjKaX3zmBmox8BsgF/Ozo6z3ejZABJN+dOlkAwxE7IRFDbl8bTz8yaoPN5sO9f5PujwXcb/GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771495494; c=relaxed/simple;
	bh=hh3cz3S0b+TeBsCPI4amB3M46WlFy7DLnQhYdf8gFro=;
	h=To:Subject:From:Message-Id:Date; b=avQmutXqpUcvJEc3SqLzMMCO2PPDI/8yGX9Y+P7Ib2y6lMfBU+so584A5YN3gIliCDvfUmSqr6KWwgIkX3aYGYpO0WjYGNl/3w0npIG6a87FVTLwgEsq6etAQ9sLOGB4ihY47RvOzn3tqsBfq7wFiSo+cOxgzhL/3nUTUHz9bRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seK4gpei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seK4gpei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EDDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771495493;
	bh=hh3cz3S0b+TeBsCPI4amB3M46WlFy7DLnQhYdf8gFro=;
	h=To:Subject:From:Date:From;
	b=seK4gpeioyoic8o0Aau1n50uZ0IX6rkyKDz2gbohHI4JUom3WhC6aYmvnisyZYYiK
	 s9po9CcKxzfi+Y65C6INleVoHiknPbkODkYEKKFfnBvL/0YeYM58xgDnVtiqJYpf4p
	 Uk4S+rx2QD35RdTm+Lx0LEXNRrhl5V3Ga5LbQmGudMDBZBTaxsBJT/Gkzkn9GNzmAp
	 9fGPbj0FRqDIqLqFsHLATVUVpjXp+glBH5ZGcnvw2NXtqkYgmIs9/VPPu+Vj3mE/D7
	 7GId7z4MFhprWOu6w5B+y2UpaJj7SRlMjvEW96p5XN+c+ljR7sOlJGgQMAbj9CffEx
	 qKTzDEm4YaiOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92151E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149549358.23093.12208203488847999508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df879719e2e96be23741fd39d55021ff2e9912bb1712737f404c8ba5844e95b8
Date: Thu, 19 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771495493
