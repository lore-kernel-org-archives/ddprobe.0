Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FDE15A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A99C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661561452;
	bh=mNilUT5XJDk5W8owpn/oa6YgkkO9wgSqRcSpOzUQqkU=;
	h=To:Subject:From:Date:From;
	b=Yeb6RlZn02WKkA7JFBOaYl0TbnUg/BBw8Q0iqjRnJ4ZIHxGNfjjR5mQ/woiLIlDF/
	 3q6RE3lmg0fGtaskYEODLPH3+hz/EioIvIAJBOSUzNAl+Yyd3/MFH0exBD0FTNrua1
	 yxa6WISyBw2rYJMAb0rnUwMJr6GNqPw/kYhbVA63HUAn+5D/spByLF3RPLpZne0iCp
	 +JsOcWyJHcHOx8+CadEpspzPLP7xDer9uAV2kCz1fUNIODvOdXQ0O46JhgtJ6pKGNZ
	 qWqxzpC/HPIngMTDqM8+NsnUC0Mhgth5YVNfUUuOhakaot3d3GkPq9vn5HHNDD9VBV
	 MpuK1UKJSGA/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5820DECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156145235.32638.12199012201240639910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ea60f087d5b4c7e4ab1aa50ce68bee3fa60b89d79c962df8ec4054ce66a546
Date: Sat, 27 Aug 2022 00:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661561452
