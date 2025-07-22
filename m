Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C1A285C80
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753223993; cv=none; b=Rm/RQnyGuY5GQvXbuhQbAxolZyO5p2BxVakTL+pM0QVLIjH5MI/8CdiPuwidM0ym0LCQl3UYuJOFEruaV7Weke5DjgcNCmAH5P6+/d2iiflDvHwA/laE5bBmKYTIuVT7x13ufx+n/GCdKRZfgR4Cb00LU5H9hhQYrGX8/E+n2cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753223993; c=relaxed/simple;
	bh=GecHkWmBHXmpy9baLw4c0ZlRtQsqvGb+qiVths5ZJyQ=;
	h=To:Subject:From:Message-Id:Date; b=Fs89uliyRCepy2xYhqdowbBHEwIClu+ufzpA3QveWVWWDrZr6NGDmeUz8EqkstUpLp67TGgZZBq0vwo7/87/F9Rz82Kuo6NW3J8ECh3CNcsZ2J0XT3P5p8/cuqcfMJZn7oRcJTKtfo5/hdhSomw85naE1a7pRwuDYDNdOLAN140=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8s2uVKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8s2uVKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A370AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753223993;
	bh=GecHkWmBHXmpy9baLw4c0ZlRtQsqvGb+qiVths5ZJyQ=;
	h=To:Subject:From:Date:From;
	b=l8s2uVKOqrxWa1LuHgNprW7RG/FLZGdNIriJ74MuFTwUdCvrZ0Gn2qpqiM6MdKeQ/
	 X+d5NpaN48Wcgdo6awoZCJW4n7+GJfRdNfM26drKRqk+K7J1evlzAYJJcxmoDO68Jz
	 /QgtcSaISN4LyPGP5j+RMuSYPGgB6XTth+NL5ybzIff893rT5vujtatvYlEmZPWAQm
	 8Hve1AOGeHVwfcKj9UkgwBkj/K3b3MTYhjw1KytcNDVOf/d02lH7+B0fbsJ1fzhz1I
	 32msyNbBwp7IVCT2Frig0JbbDe+DTYDocJsHjpYtiEcNzzxSy+akEQ1ASDjDxYxBcc
	 NZ9xAcdV465JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F877C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322399357.18676.7678522541572648122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84eb928837b90fed062e518a9c3458b83eeabac79755a1068566fa03872dd2a1
Date: Tue, 22 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753223993
