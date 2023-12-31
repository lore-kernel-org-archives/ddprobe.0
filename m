Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0624B17C3
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvNtpL25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98249C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704007096;
	bh=LrZPaAZGpPHPCEQXhKvnpaRgIYW3cDJMLkbkAmyeSqA=;
	h=To:Subject:From:Date:From;
	b=hvNtpL25+JnFf/z3uK4fegKU8mudnesmry+3EMqNC5jeF+b3p8/F6EiIRyXt9ZVwG
	 4uyekCMvQFJvZQ1YPBlAfMxaCmthLaLF1PJCjks0OLAonPEfU/QF+s4DqUBe9AGfQA
	 LW6zjUXjezBUq3y+r9Mlb6uJcKJiODLL+LGwAIP3N7otD8RtWdQCWJaNDKMqMnLQlm
	 9B6vh+n97c52zHGZx6DQG1CXW92yCJVgvYHHlq0IJOEbSyr+j5RIGAZ/EVK66/4VnQ
	 IXGdNgMw3Sy4M+fdf3N/WUUM64ExTTlGmR2TKde+fcweNDpZ9obL+OZACi014i/DfR
	 skez5KAqwnZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 748B5C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170400709643.8013.2345655508010981618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa12f13c5d669229492bf2171ffcbadb0be6ed7927dce432ce3bbe6df263ad1
Date: Sun, 31 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704007096
