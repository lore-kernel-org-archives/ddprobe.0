Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52967351C10
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775459134; cv=none; b=UjfsdT/rDQ5Ln1kfqv9krbB2pCa4Zknwqtovgub8kcO/HbWGY0TuGLLf8OGMFAbqUwTOYxiWL0YpduthSdgV9l4pKZtJZpRg05eB3R9M7tikQFUE17MmpNzDcB8f0ZC3OTaYij3sLZffiiM9D9twIR0Q9THQxAQlGzayGrMx+jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775459134; c=relaxed/simple;
	bh=zzRUUgf6rjqaqH4YQsj4pckjxu0mJTXt0GX9ZUw5D8M=;
	h=To:Subject:From:Message-Id:Date; b=BiTjhiSpbkGtCJLc7LQcRo+pf2pQ/0YGmOMZiREveI48dm7nD/bPyaW5IbM5wpG84U8Ls9pA+i6qookuR6aWnNiLVusSY1k0Ksptdmt5CJ/8NIRuhGaJuQk3OhqLEIqdEdm/qhO5sJvoj8mSfL/2Y6AN3XjwDhIcjK7isTNhb1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2XX+IaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2XX+IaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1657C19421
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775459133;
	bh=zzRUUgf6rjqaqH4YQsj4pckjxu0mJTXt0GX9ZUw5D8M=;
	h=To:Subject:From:Date:From;
	b=E2XX+IaNv2Ukuw1IQ0Nx2UBf1P2B7x5OxJC1Q/E8K+hFJuosslFZAUSAjocHEcgIK
	 oV6Tu9THAvIT/FvX35kAeRwpp5H5Su7DypvwPtmeC4vSfBdFG9aRrIizj6Yx8YEDyH
	 yYUrf3Yt2iNu/5aybXDDzclE50o5eDJ5ze9ACcaNy+eIEToxY73kVtyadufdCxJfwa
	 O+AUXb0Rscp/FYrjdF3nlP6KwKhAesW0goqmQNvl5Aj4OR/yOxX97UVD9AbA7N5GEe
	 WK1FCcg+P+yxiRvtSnW2oLPwAeuNjdA6Ru77I3MwzyhlwNHRBXO1puaK1EPSe+B8c+
	 rhA3c88DliKTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0123EF4EB4
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545913374.3713.5772398502288699554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956dcefe30cacf096aa424eda8e0dcdff4be217361416be359ef93979d9e1b89
Date: Mon, 06 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775459133
