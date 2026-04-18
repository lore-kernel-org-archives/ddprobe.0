Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1529A22B8C5
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776536854; cv=none; b=qXJSLNCjJIFJPB3S/bt5aSSFUYRBhzErOU0TJwyHH/z5keQcgu/z+CJ4pZ0dct5egdpQicT1sKq4oaZ23tssShF4EJcfGyb8v8Sp3z3mzIrNl8EwnaV4sYxg5FOWHveYWnwzHZAIP+wxRvmZ25CbN4VmhtmptoVfek8HoOwr3Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776536854; c=relaxed/simple;
	bh=tFwXC2ezqyYr6v4uw4bPZBH/wXOnlI7yDkcQQWQhTWw=;
	h=To:Subject:From:Message-Id:Date; b=YZXgjPeea+Ej5q1LdRdWUCdqeErZxCS7bkX8Aut4jLidSY3pajgVqwNIjDywYIYqUs9Ews2c525ZF+jzEgvhCzvzBh+2R4lKdbYp2N5lf69/d3vQbFk9u7/2JNuUIqQFFNYMrMuzdiE8xXM791vhdVZTyQKUvKJBIwD1bGb5sYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvAJEcCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvAJEcCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC82C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776536853;
	bh=tFwXC2ezqyYr6v4uw4bPZBH/wXOnlI7yDkcQQWQhTWw=;
	h=To:Subject:From:Date:From;
	b=fvAJEcCLjdp8+nb+QptbXD1U/shTt0jh4E3tBJMBJCunK6Gy2y+Id41ZCSRdW0SLd
	 rMkhkOC+kZXJ/lR/1wCFNvQFVk4wL1UVirO6KNqCW7u/uSlkrPkM0G3grauWwjpWqZ
	 DL4HvjQs0+VZUIpt/aprdRqpXxAus0jTrCySCMR0RZuEv3oa2SVJHN97x6d2R6c7Fm
	 aKlI0MExPNuOTx8eFO5PZMMlCICyT3i5PPfdaIRjtNiMe+B38jdWtUsyuzp18iqQKS
	 2IQVJ9d/PWBnh4knd8JCYa80mV/BNdxnavJ+t2xO2Wqnu9x7jjea3KA4hyfuRp2BxO
	 u3aT5oLjmM04A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A9F99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653685368.16804.2240396524571631144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c88fe256b7e054e874ba1c311112f4cd4de4883e61bc5273542ae006e9536b
Date: Sat, 18 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776536853
