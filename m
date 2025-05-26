Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458BD163
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748220594; cv=none; b=L+7AIT6CJrZBsAwNu+PilMgKQ6GfHFFU6fnP0MlgDEItqmBTq1lf56YaeFs6FsWkmb03BMeGzPgu3/3iCY2m7jieWYnV1I0XfYD3GQa8R1nCRD8CffQXcPmEgltrmYLhHcZ/WYaBcDqQDALXXPUZkHzVbvhSlXG0Y71+P6R1IT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748220594; c=relaxed/simple;
	bh=7Yz9yKGIyPDdDEh5tCLuKgLYlEGNRXjWV8Z+MnRjkX0=;
	h=To:Subject:From:Message-Id:Date; b=RVbHnmsL/2GQ6kxn21FsZ4zqDoLuEf57Mii9vKV8aWqnArg9nfGIv4ea891BXh9j0Ephm0APADc1OpQ+61jprvBVF92yEmfAEEm7grvH+lrECww5TdGhp+2ZfrkB3FgJVQao7V1hzAcYRYhgd/uRagaHYRtb9XIbvnVFyX8JRfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7yz0SWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7yz0SWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1562C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748220593;
	bh=7Yz9yKGIyPDdDEh5tCLuKgLYlEGNRXjWV8Z+MnRjkX0=;
	h=To:Subject:From:Date:From;
	b=m7yz0SWGnLo8J8PesXr1g6gkh3ZiwtPYeb1yRT910KZCbR15TPZRriX4GhkV1nzrU
	 xnkPGSzk4iYXttfkOmhi/Y5m1zoPbQBtHEGBdRjSJWBxEpSUlME0UoSt5fVMNzQEW3
	 7O9sjeq0wS3CXXkymYorqWu1f83I8aDa7crWw+e3rrEsZe9wT3X5cX4egitsywoiDH
	 i2yL902ifDa6wG2YIaqddmpo4DzbSAoDRY9uPvsJfYXwnn4Rvr3yjjdhp2bwUBkVyT
	 DXNq6sPZCn05chXilleobXxK/19UnSXQIcUk3LNfV9AV4h3Gkl26Is0PnPNhAR2cOC
	 MFWdI/1m6ZJrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAACC54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822059357.18232.15759375569881646437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e64883806a5174e59bded99e29bb3b402a67a2cf9ae181f90682763532d418
Date: Mon, 26 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748220593
