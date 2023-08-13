Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673651846
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 07:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDC9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691910788;
	bh=OY/IPqKCTAoG8vQZYlqz9j38r/ZcITUoHm4XeyP5Xms=;
	h=To:Subject:From:Date:From;
	b=dsXAsHF5YcIOhP88U6pXgST/cZHqvf9pa04xX7caSALZh1PcA0kS6oTkO1u+IY8on
	 scuHnU6xhmQWEmlAmbPH/NPLTQjo+IpvkAy14OlIFVZD224ObPDwtGWfqkfgKdsyF3
	 SAy7M1Zprv9b2ebWK65LuIhWr4wpEC9htpkSxhPAl79wWWkeUrjd49jva4gPgIi217
	 82PSo1H3tlLevXZsv11DdXtYLYXbHrHF+qDJbqWeaANqNQUq0he4L3r+JMIJpaYqg3
	 DG2Kr4HcTkUfnfK8lDW0L8dj6XruIUuKSYcjlrhhPjkEwI/anZrG2k+DSh/MsiG1xd
	 9jJ1sYvrV50hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE2FC001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169191078875.15987.1931624919759004725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6178f0acaee7fa8b4ced48f5f4361bf2c188957f437ce9c7bfe66b9ada2822b
Date: Sun, 13 Aug 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691910788
