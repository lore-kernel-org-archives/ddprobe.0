Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F61625
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9B4C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668070254;
	bh=OKVvIiXsp5hU7rzF+VYFdl+RHpcKHvy9xD6VhxGxst8=;
	h=To:Subject:From:Date:From;
	b=MLmNrbvFK439i3CyH5jPE51ZjMxQKBWTcVmkq+aG49YT22Gay/VTRspeWLzQA+rkE
	 thKVzlCZXxkPHhdHNz+85feaHaJ+5YoiyNXgWucLVDx91JGuDAi8Bm15MxDxAtVqiq
	 NzW7H3l1v6xRrropCKQ/VfwAF1AFUiutaqqVaKkkZzCf1ZUe5OQ5yEkBWnEFOkOhb7
	 EFx7hJhfr9+ndkfP/LTuPqdZSvGWai2zQPe2CMwUoD0TDrHeSZTgYVJ3kSjb7s4IL/
	 9CCjgfoGjFiB+JXWgjFVACJezz3cVggLlFCOx1hFpKfkM0rwmPsLel1eWyElh61i7+
	 ePQYy5ZOHfTQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57369C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807025434.19381.12194591694535025882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638eaf0b9eaf2f2bf25456c5ba08d2278d38f429af95fc54edc6d944b3db0cbc
Date: Thu, 10 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668070254
