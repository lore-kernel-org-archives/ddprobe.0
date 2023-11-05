Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313FB2F26
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1W1LkEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C383C433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699193296;
	bh=LqFFMM3tHR6yINve0v8CDV0kKU/pd5rPAsFCqP2K3OY=;
	h=To:Subject:From:Date:From;
	b=p1W1LkEyqY3u/KiMe2JhteVbiUZyRE908z7l1uyXb2lH+0AMe4Sh7KaEw5x4+51O4
	 OpW+agd2D2sZVz1FY0Jn7aWodj3UqALC1SjAMFPMCOOjsC27wlDKUjMTEFED15TRpj
	 KJ3HE48BCt21CTc2OuU5ZKNsb9GQlmdCj/pTtvdO84Mg8xwlrV10DBCWVzjmivGEPl
	 zNkrUI3suXJ5AA6mhyhvoa7Gr1WMJmTKm9sWj2x9XxUoEVrgE579+k/VCbtDVucM5V
	 qVL1cCBNovd26q9zuze5iPE5jtLzB9HJvsLZBgKRAKUAGLVjAv0YlJEUaMoARGTMIB
	 YmDsmnWcCUOGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8ADC4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169919329644.32057.18239606487283856079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c9c36427a95aba501a2a35988b9ec01ffcb82ca2d370e689619f80d4490833
Date: Sun, 05 Nov 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699193296
