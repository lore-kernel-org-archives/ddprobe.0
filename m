Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DB23D77
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF08C433B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661518852;
	bh=gdY4PeB9ivlz6LlCk0DGUmfVnNwAgGbEEBaYa3XcjzE=;
	h=To:Subject:From:Date:From;
	b=ClpDqzI2DoThICI2KU9SUEfTFhNCLpoTuTb/E6QipHzK3dngQ9zpoV2hxV1o2EX+c
	 ErsVl0TaH05l0PKR8/9HeomEk/veLSN2FhuwJu/Qsm4uTC0BPSvLf3GG3QheIe956l
	 Z2Jq1J2VLXBJiAazDC1cR7EJheOv3AJD/JjNpSGsauwMoUCkPOccIl3+bP8ZjUY5i3
	 gKEZb6mGqgE5nCsRoKwHz5JCXd4nj1Mj8o9R9Oe3ODwoohBxfM8XaOirkZykzSo6Um
	 WW9Iy1jraj9/CgKGNmD2HCzTOABDUQUY86p2y2S0O7w5FnvWOHoIGw4TLIuzCN05gu
	 r5dxnpOsTf8mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A9BECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151885233.22820.12356279173545184475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f427c8ae50b05c201e33a3a673ba2bd8f0126c5a4817eea8eea4f5a3c35a5d0a
Date: Fri, 26 Aug 2022 13:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661518852
