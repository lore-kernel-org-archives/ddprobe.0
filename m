Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE3F1EA6E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHZCkO1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA4AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697924296;
	bh=bqJKv7u9Wp5jHH7HVp5Nn8/KXudUdaNpnZuI3wAkAg4=;
	h=To:Subject:From:Date:From;
	b=aHZCkO1SYOeIZPmX9BfV9B1CUZ2HE9YbrHRLhWBwJ16l12rsVmrijDops2ZWfR/kp
	 vNNIvgchWR6yXjMT8KHJOT+sWypdcwv+4Vk6S2MdgUFrbJHlgfIUUb07cJiWLvWYut
	 L4wrwEtNmxlyWbk92S1Oriewqq/OSepQv5j87AIwiF27XySas+vmot0fVvwWwSpBuT
	 k9nGXFoDhUndZVAZtBStaGJu7daRpJMr7hnK7O02MLdny5ogT+qduqa1HkrljnbrmB
	 wZ02gJqK2mhFILPyHLrITg+DOSW32IAH7vxrC50brZ0LBpxOm++TfPRHglzljbP4cC
	 nubo1tyq93mvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A2BFC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169792429644.13016.9728882147730093050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c8cb99a86f8bef354e55c254cda8a8b22c87009f1537a45ea4eb25d32d6bf9
Date: Sat, 21 Oct 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697924296
