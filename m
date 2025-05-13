Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD8F1E485
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747102794; cv=none; b=QKAxdX5dlDMjfNxc/iaFbCsFj0n/wPbhmNahIaxKm/uSzlXvLnhd/4Y9VfnQTFH0ob7fOKe6ZUd+ZvpruAeUB3CSCapq9wJoEHDlN69lNknaG3Q1TIilpoGZA1SPLcSWhI9Q7Rc+L8ymH3H8Sp3WbUYu0w6EhaPG3fHxvRnDMo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747102794; c=relaxed/simple;
	bh=u3VXS2mgYa8WW1DN3KoeKSX3OBNBuaflpw467usfhiU=;
	h=To:Subject:From:Message-Id:Date; b=tsjn941XjOukD+F4OecEcZklx5/j3BpN932i5OVBI0YGpNDWVO1NQzKUoVVZX8Pf5Nj963HT9yZ3G+z+KOMHX6QiU/Py4rUFyQyXT7ZLxTuKvrWrtznj+2hK8ff256zam0JxXwE0QD3u3lnpPrIrJZCdYxGgUrCOblUqMxCsuuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJWvnz4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJWvnz4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747102793;
	bh=u3VXS2mgYa8WW1DN3KoeKSX3OBNBuaflpw467usfhiU=;
	h=To:Subject:From:Date:From;
	b=WJWvnz4H6n5UFQZ7N1v289nfwccdXd14twgu8/HK7KcYzuSXedOKbveWTWIJq4a7E
	 2xxfQflcM4GiwWHARK3jCoa0oHCTynZ0IDqIyQtM97fpSLpnT34rrqCyFkpYK6Q8eh
	 KJb60GXG1IwVzdDk1EiUGvmsXvKKs72dDz4rumDCBvte7zOVlk3lQPTpdT1eGqVm36
	 1BPAIsxkfX2NddMfQOq3pmQf5p86BNXAHo0MeBf3Or35O/9sTSGcTu7+rP8rx463T7
	 Kh543fSMgdBMh4GZDpKyI/WKso3ck+fnOxGd+fsx6xa85HIdM7vFTOxHKliPGZtpt3
	 bdgSboWWDolyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E3C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710279357.12154.14239339289476663228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6cf30852c0cefa0d0c6fcd7b5d266dfa5854615ffaf44708aa2265b3338acf
Date: Tue, 13 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747102793
