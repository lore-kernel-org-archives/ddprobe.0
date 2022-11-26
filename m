Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F90EB12
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F910C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669446654;
	bh=m92BRty22dGixDWICmeBZ9frt5Y/AXGyc51B3d7LV6E=;
	h=To:Subject:From:Date:From;
	b=vCwVwiBMrs16Kkl+au9SRbD/a6kgy4oEvfhSA5Tg9zwAvOBD8oh61hy7U9AzNgviw
	 fWrqTbDQa60/sngrT/8a4QoAXYaVVDtzAaXH4uwDiGaJ8lHxKcAQ8gj2MUyy2yemJ6
	 vTkpeIG2cMOM0n0N5arlxDgsdHC07/buMJz0X9xl2dwIh24Vp7Kl3O+12gQ/mDaas9
	 d6X1QWuxfFwqswMCinbbwl23BotI8wBVNUEuyp9wTSod4gCpNHT1gjJv8mMs7ruZIU
	 dAY9BhDON0oLhnqh/jGUZLkn8t64n3NRCNivKoyjNG9wcoQdxfabh3NEW9P4XBnM8q
	 4aMDvLxdFCFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653D8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944665436.22664.6802417481347710629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1fa5c4ff7d56ae108d55c2f0df1bec978a9b4b502a3d2ac89980d6e5c3cd2e
Date: Sat, 26 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669446654
