Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7835253FD21
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791987034; cv=none; b=SYbRUQlOrFR8zO+7nXPVVVu/A4jZEfTsn8e1/p4F9GEOGTLJz1iOy4ogq8K+oMh05Qib5/2+wnp6NCBFCm5Rm1Vbjcb/A620gdD55YKwDEv2E+VTlFfRlInZBJ5HdglvqsPYDcGXAuatlTH8dLwoFbHUajgRNkxpYGCq6yruf2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791987034; c=relaxed/simple;
	bh=ZTaaLOLgflE5eYDaNDbIVxCiC5Aks1KLivEUfDzVAqY=;
	h=To:Subject:From:Message-Id:Date; b=WM4ORAWiu0k1qJ8U0MjXeoqNy3+QDZG29mEirK2ZXCFmazRnGc14XDXJHkqLuHAQbEPLU5+4AFo9TTR9Mr8ERFIV+9gEZugdB7lBb/iCiLDkjZhg+PaFZ/2Tct45HZbWqLPH7OkoFyB0wmSsQKQeueX3HwA3GztPRs2DCoBJhS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi8lT36R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi8lT36R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF78C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791987033;
	bh=ZTaaLOLgflE5eYDaNDbIVxCiC5Aks1KLivEUfDzVAqY=;
	h=To:Subject:From:Date:From;
	b=oi8lT36RC6ev1iRsmjgnN3fbP/nqwE7+mwnK7XaP4jxr0XnsOpHsz4s9xitqvI5CY
	 xur+ei4QKAA3YE7FE6Jd27ew+l+7oMn6Bl7Cfv/8ZUbAQgeWYmK+3wOe9hfAhgfhig
	 EuTE5rjnaMZg2IUNZZMlu1P13aa1yMZflp6iEQiuEwMpL7rW9EE++cuJlgsYYEhFoa
	 t95HgxoW5W2e7esZLqFIoW9zUyruo3hheuAGVuR+amJhHr5kGmx3DEZoGhNY6wACdf
	 1Ht0soQ/NJ7c3U3bUjIEuWyyCmZJPjpNuIX9aUib6TXHyrSeFpt6Ms2bhNwVlKhKkj
	 Z7ld447spB/Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB18CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198703369.12153.11906721909561839248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b696e780dac82376b770e336a616e416bbb18da31d36e5c9895431c470ad23
Date: Wed, 14 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791987033
