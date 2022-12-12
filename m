Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB88B7B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83823C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670826687;
	bh=gl4RoxAxysRnbi2KsOW936qrBngc+sEs4jLPqCn65jg=;
	h=To:Subject:From:Date:From;
	b=sDPBOMvXZ1A0LFu1qg7KX0GowHXmDqAyYed/ed6YDt8gq86yQc12Wzoz35VRC5vjL
	 9NPHfuprQkv4XumPEcUajp/G4unRKpUdwbnDKHAm5KgmOjhTl0PZFdlhVG6oeAe54x
	 Pq4OAn/cNcJPYwfHmn/90vkfJY6ngpYpBz1gKW6YJ6i1p6+A8pnmME3/UPcovugF/c
	 tL6+mcrZdXvh8otgvM/Jw7LLv52MQsMPCySO3wTzHcD7v0aDkM938MoGApIhM+UAzg
	 GAvQEHF681wq/FhU+WjxucDQHL034bUu+Km34JLRHG4EvYZZDhYB/LdZfd5TwNuwLp
	 uBBJnaXeTRk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67808C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082668741.15369.6895184374252504839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edcb8bd896c65decc17a492e247cbd21225818fa3e2883d3517dd98e2108f00
Date: Mon, 12 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670826687
