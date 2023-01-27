Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FA0290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F36E3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674855786;
	bh=m13tD6N1nxIrt3Rg0mgYrw4oD3zoOPDg9Kbxl2VgBtM=;
	h=To:Subject:From:Date:From;
	b=UADMjSWvZmuDhQk7HxUcZJqy72AHTVXe9KIHIourNv76yJewJiRh5CngYS6L4amb3
	 V3F6Ugs4VhhfsEWYoAGOGxU9Q9r73+g4K5mr26cz/ywwSeDsgSsUIsmWYaOUG1G+Nq
	 JjtjOz9FbCLrtoRzlJ6oCEJXdXdmXexaUXl+4cl7MPTyo3WcSyMmv/Gh9qggU7oIZf
	 1/Dsw65n6qMBp/JserKjoN+KjCbAwbGLSoGDt1YeGjHQQXQfq85oT6wbhfEXwebp/m
	 HA541YDXKUEcwOL5quXF6Fwuuuj6SsfG3sdUFl8pyWK6HFgUeNU0dt5zpyZIy2w5GM
	 u61Z1I7VcfVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E83C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 21:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485578584.17471.1170361075344504903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe9a15090b3eb3a662f51d634b92a7d5bb605f9bd4e793585287aa6f7ec7983
Date: Fri, 27 Jan 2023 21:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674855785
