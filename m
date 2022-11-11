Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11DE620
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73296C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668132654;
	bh=WGsJLsIFsLbempP0OtAFpTuK6PEhIudWuriAC1oJrXU=;
	h=To:Subject:From:Date:From;
	b=Pif91FF+HEfXs2hTjfzDc0b3KjcvSeSOjV+iGOK4fCjPfYAvX817HgjmJJXWGtWEg
	 yfc36twOtPZvb3eFHQCHzzQF0InEcca7MWOF+e5sI6mWtkHmfh85F0GV491lj04Wpf
	 r2oMdHYnAkivGrrYy25TuyZCFSxeKPJr+1Bk9RJulkLrIameElw6Ul6JMpfO4MGFSA
	 6D+UFrfvP6Zw02lWxXQvs5K4FSaZ4NcPjZ8NoAwEFdWHL5nTOmXmBla7sxfi5UfJBk
	 8NJumkEhWxpbqPnvaTpCosAKhTAgx7PkNIWi0dheDkbZaK8OSVDTlhmkjW4X5r7bwl
	 371hLzPJ4BSOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC1EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166813265436.5683.14035104626670913919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb80acd496c67dd962294d4463e4d50d132e41903f21946a6ca95a93a7db2b4
Date: Fri, 11 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668132654
