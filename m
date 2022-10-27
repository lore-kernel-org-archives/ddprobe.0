Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C065010EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6F3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666836654;
	bh=RwgqLVh90Fjbb2GZAmrdXvCBRNN60tpmJSFMAO+eZJc=;
	h=To:Subject:From:Date:From;
	b=NBQ+Ou2ispUNWRmO0r97JtIDlQkh+9lFkn+4vXb8t4iVmTCXJkAutywB3klKvZ/v7
	 LBjnlw9kamnQ/hoCLwTghN74T6hr8NKwDEZPO0+7sO2BJBdbSUZksEvVk7aYxXNOr7
	 dzFNFdy1/u6tKlQX4E5c63KGdXJttbZfAtG0wkywqaMzB/VtFb7GM9dpLXfiwpbe7e
	 /SoI7oEaaKV2arvPVGdtvxejmzWvi6Hao+4A/SKNdyf4JC3GE7as7xSpYzeCzfbXtZ
	 5rNxaEhEhpm/2pOxUKShIa7iWF1JNKsmQehqYrlRfQiaZNUKDc+uB2xMxgqYGvIN+n
	 D+3yJBi2zjqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC41C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683665431.6016.7512777868049234620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80633967c993a985ecbe7e2583399d7a1f4ce4d6718d9872d0591e42a72b0281
Date: Thu, 27 Oct 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666836654
