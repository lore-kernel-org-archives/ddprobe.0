Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D417B62B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D95C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668913854;
	bh=1dDTyhLQT32rGp1f8ilsxjjI+QncsHlqE9r5ssjnhSY=;
	h=To:Subject:From:Date:From;
	b=irQzxTYIbha+ajiHpY3HkHidflxecAa4BoRGkjW8yL8eXPmY3iEiViqNr/+jUFYjR
	 X2UyoioH1g6FALCNtsL4ifqVoS12OY+mgpkEp340974eIZC3lEd+ovBiaPtwpJtY7n
	 qVFgrn4BPV/Q0aIks5lTzLfPl6vWRBl7W37d/nBo87FZqlkvhzIr9mzKKf24iBBz9E
	 zmVnUtf2uPWQJplYol2B8lnpEcgIinULynnnlB4TfKq80X4NvoKDXMnOqhAwc0hXGO
	 pLiOhj+26b0NXv7Uw2rYIbMvsGYFmDT6xFru+Gwhjp1unom3sIyFSve4Ymap1WBWWN
	 B5Z7M3Ri+OwEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612E5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891385435.10834.1969873713993267860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f673ca81f64377f6b2d5a4ec49df9ab6cf4874971ba96f498ce2b25beb6471ca
Date: Sun, 20 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668913854
