Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125AE433AD
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774681494; cv=none; b=JcC9Ujy5G7otdNQy/uE9LHBDgnsIPJbuSIDi/qMg/tLmkk5jmGwHvm3qXKHeZgLv8TVc9kT7OIk0jifPz+7BJJU4wBYnu4AfOcwabduDdDLzBr2MM8NRG2ITRcqeycNY4uakUgLsZYtLKGKsg5unpavBo/FfzBHh5cX2SfV33bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774681494; c=relaxed/simple;
	bh=O7cWU/J1i4ugYctobe4k7WH5Ls2FwYpJnlqMsgpU7fo=;
	h=To:Subject:From:Message-Id:Date; b=hBTpgrrsPg+q+x+Mp665dlX9rOQvBOEbegFGFrf5xWVF5wIRvZQ/rdNAf3CIK91umqE64Kp0veuSaE8HRNSsY1YNIhNwX/JqkcGbZzNAoPFYhy0WZV9t+zwJW3fO/GcOynVtg1dUO4KUZWMCVWXGJcIGxgkJVXYzdY1mxkPVvxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdfTVxzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdfTVxzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774681493;
	bh=O7cWU/J1i4ugYctobe4k7WH5Ls2FwYpJnlqMsgpU7fo=;
	h=To:Subject:From:Date:From;
	b=MdfTVxzF/oBCHi2NkemwIgKEEs/4PllRXT5hd5wYW0gTkPSyyIj0dd4M67Go+WF5t
	 LXsHmN9KAXqu3b3QgGWVSJHyVv8hLIcKANZ+URMdykZ1P6yCNLKx4rlNzOSooBP4mn
	 xTYIiuuvvbxnK2gZ5s/Ex8tXiDOXqIoyFZlKbB1wMQqy4heZBbync0Lo9a3K4szHEl
	 kIfU/NW/Nehp1nXleAz1k8LmO3JGYCq6/W1iOvWhaUBvJuBiJ+SYMbqnYD0aXe3vRE
	 zQNWNxc4j+KGNLY/Uqpnkj/IqzRK9BJGwjEnmCQj78I1ASKOEfG1GwmLoICABGKjFG
	 EALsH1ZNIys3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158610BA424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468149358.17042.3950897285306122290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f420cffb5802b63d082bbd546e362b622c48fc783d3a747dc44e16377c9259be
Date: Sat, 28 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774681493
