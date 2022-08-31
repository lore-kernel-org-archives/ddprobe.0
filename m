Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFFA4C61
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E19C433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661976653;
	bh=+mdaYq9u/BKZ0diL/WX4bBF2BcnOW9D50Mgfzd0jjX8=;
	h=To:Subject:From:Date:From;
	b=QKlP3O0Cxt5Ctu2WlGM6eBiJks6I5dbqC0CkF+Ck2/vK+7VDBUewx9AnpyRjhqV4d
	 zjnftXtckBw3ATXB8A66EwTZMXEoFyMlFAP0bKVOjuT1t//qMOW/e9Z1WcY6m8XMmj
	 5SMMhH1OTLmkKLlDXxh0Wsdg3IjA3kS8v4OGiBNFLvfdtiqBzQggcu5n63RMB0AQ+M
	 H+JLy43Es1kbGT5UargQXSmpOlqMvw1Eom7wBsWepJjlAdQSurl+TToPkqHe8UQaId
	 eXln4CvwChgCUPcFy5BAn+oLKLFzF6DyKV75HvEOoSXK0dnyUXlyJVV6DMMU+ttTuw
	 XnumWbS9XDTzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57295ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197665333.28333.7400385422928919821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe541c65e54a09934946387ae87c3aa39b155738169fa12c04007454bacac240
Date: Wed, 31 Aug 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661976653
