Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6AC8C03
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69303C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668712254;
	bh=lVO4CR1WMLBHYJWeJAtAFdLxhijw2RoR9da16EaZBys=;
	h=To:Subject:From:Date:From;
	b=msFqOrH0mcX6qn77TMiCcfKdyZqB3KTyEVcIheHOA/3TAapyi/AqCLDatb03NpYJi
	 cluvQAvmMaJzc7Mi/50MZuj2XX7u0xc6+PrgcSENuIfWtxVcn3uNXWbIn09Fjw7oNA
	 KVMPWBQq7oVIGi9aD8iLvehf8Ii3FBqf6JhA3SvtJLn+wyuMF0gCeyDtHP3uCFTFn4
	 UXtJKOEXC5rbQ60bnvytszo5LaPTz0PlpAEfEUi0MZrYnLn77UuY9IYiO7zEd7o/N+
	 gvRBm64Z1G+B+EMoDSlNkNw++jIlgLtib8QV6XEvmmYH9XgieSsQugy0pgRHOiu2nE
	 YoCQ9Ft8M9dPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1F5C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871225431.22629.15786722349273309885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ec8c27f0c7a43d6ab518e0f5b7077a9f7b158e260e16d095c707dfe12ab63c
Date: Thu, 17 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668712254
