Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CAA18046
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709611697; cv=none; b=nsfotYK/1sUJXdphZK07eAqCpbwXoUK/CeTiDms2fGagGoVdKH+1Jk1kZ8fEyEAjmJ1mijLyrHOz2ZPrVFzVc7S1+wdvpa5JfCLeuP0y65gni20dp/impzNKygxe6TU0619cbX7wJWS+SU8ER2LFIN5Fu5is93QWnFCowKgZdyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709611697; c=relaxed/simple;
	bh=+HRgUi0Mo/BnoyKWAGet5N6o2X6K06xs03mXQW8cTtU=;
	h=To:Subject:From:Message-Id:Date; b=AaUhqDSL0MeKdzZgubgZ9LILqLexWyiwGUQxZP/u3KZGVU8QRoiZ2XxmxDdHG8oiYlDRnUFOzI0qC3krgKfgLLLdJ3Xg39aYX3LLjKYVJ5nw7JoixZl5Ka1F+N1kT96kTmBah42ojWnveVXUsobA3VY7bz/zRnQUvyvwHDz2wH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhnXX4XZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhnXX4XZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E248C433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709611696;
	bh=+HRgUi0Mo/BnoyKWAGet5N6o2X6K06xs03mXQW8cTtU=;
	h=To:Subject:From:Date:From;
	b=uhnXX4XZ1+ptXV/Yzl/BXPX1CMUXqBSTN4g9/rEJnqMLK6rO5+LyWHdRsXVNsC8Qv
	 qVh3yjAvQd4peOeToO4NqbVl8tcI8KvdJhGprZ8vSeNiLKDWu9WwgWWr4qln48G/W1
	 e65uL8+DU+8PFOAQBLKQKsFbsj46OdewhvB2626k6bpJhkcqPZYAoZZSz+VXLIGnBk
	 Z7ChDcjgyU8D6HEXhoYn4cA/+5Iz5jXiDWO3kJr+VcIC0tKP99Q5PBa4xv7hc+e05y
	 JFlVX1BNOoIdB5k5YhA1JS0MC6YL1S8d07mA5lLsGmF2ZutN9kJ0PwqH7kCAvKwunr
	 I/j9fUo0E/lSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6084BC54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170961169637.14427.18259535670638667964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2f15f09e3f55aab04d60e3479e9418df852cc20abd984421516bfe40775398
Date: Tue, 05 Mar 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709611696
