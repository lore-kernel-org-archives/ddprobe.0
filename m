Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476833C25
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8877C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686654365;
	bh=OdrD5vYV57iz6UAvaZND02Z9DUGsyi0ihQCcGXZUrsE=;
	h=To:Subject:From:Date:From;
	b=MGslDAlls2QUoBZuH2x2NrWbFPfQZl3peBu/ejZ++XJK5cIinxPUf0odWm7GnZszm
	 a/27L5pcvAXlDIwsAKsuBJLXgdVj0xB+RezqqCqF0U9UA7FowbTAsXCHZ86Vuh/j5N
	 eGV2SRAShl5Bk3gASpm6IcLQWshVvSr7MpJ8LwDHtJBJKSx54gBi2NtKNWU72uxjCA
	 5hcFIat7EgEPjkQJIHcKGGlFwBpaTgIrf4eCBybpdghxL1RUm5x73oynf/34/YeeIc
	 ItQejpmh6tkOLEJpQqAovtO3iQqxibrAYME27XjIszMYA4hmOtbM343D4UR4ZGa5/O
	 59qdDSlm/AHjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EE3C7EE29
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168665436572.13137.14063738797834580362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ead2ffc0ebd23410d60c4fdac94f4777ee154281e0171a654b55dd751a69d90
Date: Tue, 13 Jun 2023 11:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686654365
