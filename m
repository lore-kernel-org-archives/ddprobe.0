Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D222366
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715386943; cv=none; b=hmNWPaR9GZ08y7jis+jP2TKVaMfllq9SaZb+ivEyw9ANoy/U1zwHPng5OzIXHvBDXGMkrz7vzkJH/pni4b8r3Bc9Kfy+7EfEl+mVwGYC5WU0eeHAwfv4E5FsKtkyS78aO2jvM5ank1Q9oqfVD4BblBCrthzSh9CRb+7rqTOBAps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715386943; c=relaxed/simple;
	bh=exptJSsN1f+MNMODYQHpbjpTzo77P8GX2mnx3xE0Ba4=;
	h=To:Subject:From:Message-Id:Date; b=k95jU5eTmJ/3Igdf1quNQm5CoCAE1YQyQOPX8YFzDHmnYxluJqAMq20DKXmxWDBtHgirAjA0JtlMcbVGY3ULGJud3rUx5NtG7OyjKzCPuhaijEn5WAwS+n8UH81gdEb/kON+SZnq5fBH7moPdf09hOIpMc8LRsm36TXm9JFZ9K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiqV5gXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiqV5gXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E91C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715386942;
	bh=exptJSsN1f+MNMODYQHpbjpTzo77P8GX2mnx3xE0Ba4=;
	h=To:Subject:From:Date:From;
	b=SiqV5gXf4kcHQZMY+2TkMzG79YRn+ydFNhqij380rZfChsuLEvZ0vhUWHr+pmyoRY
	 +hEFORijxFg+zYOT0QdlXAcEv9ppIwbaWjMzBj+BdbhLRyXOJZ5/Xw0DZ6q0/zje9D
	 xOtgMRXpS9r8g7IojpfJmD37+4E0rHozwkbwTUHo0opp10mteLjzXdagJ6SHHDRaZK
	 fiw5nIIP81ogqOiWe1IBfWHcRiadPlAPo4ufm2MptKty+4iqnPHi1U8GAZG6Fzo5Wh
	 inKZKkVQHYe7v/Yf9vwEyNSZU/jtgiooUjq0KoNDzn+tKtpQeMs+6YpqLwPEfyG2Wg
	 GBslfdyDL0G0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42DDC25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538694277.7260.6960105169627441786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b637b09fc32287693889adda1f5f3641cacf8eb3e97e87e0df404b27f29fd847
Date: Sat, 11 May 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715386942
