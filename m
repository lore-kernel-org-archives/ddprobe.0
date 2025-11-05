Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25886208AD
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762371594; cv=none; b=mwfdVxANqD07xLEgr1JyDOU0kDeUvvhtRoIRNK19jqQ4Gnl2BUhxfaX1Qr1MODZNwsk0DJT/3zMe2Bx5QgBxuCUhSp9utgv62OEIbCUDAQ2xI2xf1tGSE28MZoB7Ks1BZP5tuOdZv4cN/eKCUf838QgJJW8BHijxCImicQ89pJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762371594; c=relaxed/simple;
	bh=ZmJScw/uSIf6XoEO9K/U7B/HMKGfXfOK25gZfuRB9nQ=;
	h=To:Subject:From:Message-Id:Date; b=O4RPwKZG6y8puLzgrBZqAte3YAwVznKQMVMyhl047+pld9S7XyNGQDWvMQx17Sw1i0UNemUcBQSwM/GFsLGxu0pllSt2TbR8XwNCcv68mTHjXGZSgPQelx4TYxMAmLHA9mLZi5HqtmWJT0VQthDyhES21IdL+ib3+Jye9bUiS1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srusCgV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srusCgV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD36C116C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762371593;
	bh=ZmJScw/uSIf6XoEO9K/U7B/HMKGfXfOK25gZfuRB9nQ=;
	h=To:Subject:From:Date:From;
	b=srusCgV39k+/Cj5Vuk3AgzW5oaiIpRXkgBG37vVmAEzNhB+y58aUtlrG3MKjWTpLQ
	 dL70j8OTv5crid5ojf529u4rvoPw5C0PHr5LbriGg7imOmgDlVFbShkrioFWraO6AG
	 zqNK7ELuzRCbNpREx4WkZYJvfzm3iJ44xYms9ONAHcQbMXT3EZ5L8RRdMNLDOzdKF2
	 24FFYWXEHWKC6styT6KVEWsDG2rM5+sf04PY8PlPqQtNMCmgXSg4gBf+MbkEFmiOiS
	 BMA/OdOBqvqUlTWbpIcWBUoEwjL2JZcNzwrEHiRMUuLlqkUYWwPuIMsaDoE7DkHd12
	 ySpNOS/8cpdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB19CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237159363.501.15889295487120808391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350d6bce0241cb8b8727f82e7cd8b75ac69718709114d3119e678144214074c2
Date: Wed, 05 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762371593
