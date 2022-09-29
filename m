Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C0433FF
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D657C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664484653;
	bh=mlDjTUqnRBLRoVGcjq3qosMYEUcW8K/lh8htLZ6luiM=;
	h=To:Subject:From:Date:From;
	b=gqDV5gieD4Mrs9vL8hR0SSAu6DNexmUwuM/Zt7aOBfVER7G/ZNHOGGjDt3MSgWEko
	 vzSTjgT9mb1oNn1N3CPCpwLoRUl50jqOrbla1BzqwITziVNqPOPW3b40wY3yUWqBmQ
	 0FyY6tt7wUpIglLsvPRHdG5vcy/fSqZbb3wxMV+5ZU+GB+wj9iQ5cENCKkjSwJOWHD
	 FHtolfw0qKHCZTsJnuWYlNsIGqKyTTkLKT1GEYuzQMeCLZslu7TwYgyACHPN+tVF9i
	 U2LpK1F51KzipFOUK2iwfN91mnCu+GdlY20Hy0kc7VMSDD+2h2MfmscX620qbNNCoo
	 WyVodf755yCGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563A6C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448465334.14853.11664374457974165213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e162f5137fbaa25638d82513cdff0531de66d9d6e67900b237571aa8f4c7b2
Date: Thu, 29 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664484653
