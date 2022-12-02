Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82CF186B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759EAC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669966854;
	bh=GTkw3ah5fTVdNFV/tFWTjlu6WvoIHWzTfU80w8Nz6Ms=;
	h=To:Subject:From:Date:From;
	b=S4fBTAE9VevdIVrIfk7QOk1WN0JuYNV8A8Wt9lQba3DO0tZbrw5E3sGETnpgellg4
	 AvYqGe7ropExulkxtKAFkwM+HVNGSgZZrCO90V6DhUJYSEAqyEi5frj0EUI0jVTxo8
	 xEfW8e+u13BXBOgeOu/qZKKgPTZhEHCl5L1aOT0jytMEke16XUFrnacajUt+n8h5fe
	 Z7oOc/EEOfRD3UBLzM+i5yzhl4Wkd5iDivbYUoh38CBFwN/CM7ZMfNYnFGtG/xy5W5
	 Ru125btZwurykb5bV8EARJT9HLD3egfs7lQOriLt7KXFWYZZrrr10fnRAVXSYzSfTW
	 G2ziWaccSktgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59622C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996685435.23596.5773543583752478905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f2a62dc2ff74bddafddee8b812ba6513cc4adb08956d5d75c8aa439c53c9e5
Date: Fri, 02 Dec 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669966854
