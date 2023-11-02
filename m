Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F851DFCC
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPo5BC7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84857C433C9
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698945496;
	bh=/i1C8V2VmiXZni+Cjzd7Fssr7nNjfE8MEbkAvuiamEs=;
	h=To:Subject:From:Date:From;
	b=oPo5BC7YcuuNCHp4J4a2/U3wuasQvnSiiOHdT2VO8mJE1YvRWdq67u6YivOTROspy
	 rcfnn8/8k8eViH/Ab/JK+LLYE1NSADp3V+5iJB0Zw3RxQfiGVvtnOCC5nMoy1E41TD
	 UJ2YQzTNUKhz+xFxI8/CYRdhe1ajtN+upg6I27E3HkBooVxlFI39Trcz3SmC8kJrJv
	 RjhfwM4H3ZYoseZMO4dUsY3YJSQbx+hZliSKJgOuIrvK95xeiqRjbqkUaEcwzN7nC6
	 OWJNkJHbejAxDzS1ihDwwGMJ0QFaSX4hJNns4U5uwMvzvdYQyq63URW4+9fbMiyEYI
	 Q7IDLIDtJJWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66312C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169894549640.7465.7197895660347470591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ab80deea1d969a8b34eef6da4ee43cb85bcfb60320456498232b00731c7e28
Date: Thu, 02 Nov 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698945496
