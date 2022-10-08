Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A29EDB
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706D5C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665204653;
	bh=sgnoe8WXW8CEnucvl7nY/hMTb3tku1kn5fi5JYsKeRU=;
	h=To:Subject:From:Date:From;
	b=Brru9VupR4EOcgW8swdt3fW/Qgw11yylDz4Hz4EsDyzlM9bFF+tXUwCIN8k7U2jBT
	 v1i+Y6mDbxOVPl8uBK7CAtio4PDt9lGu1Vtsy+TmQSr/v8U1WhOlcdxKedStL7w6Da
	 4I6Es3RN0U9oQnJCnUah5ANdk/McQTn5g7C7zdSmCnzhyDbzL63beehyMBnKGpe408
	 7KqgW76avqtBwLGUSnAH3uM7d1AuscK99Z05wTJju18tk01u2H6Z1Jyz18IZps+fAS
	 0wAer8U4oFjV6TXS2ywFniD2KAaGX8w/DIvEW34rHXxE+20Ig/oALyz0nBeS1dV7oA
	 M5VbG9Ohac5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524EBC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520465333.21681.6867709149105111538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c732f1ce7f2a64fb3c834fbed871c35f26df9e7e93c07449dd6ea306603563
Date: Sat, 08 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665204653
