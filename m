Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6EB2583
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 12:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0343C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 12:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680872345;
	bh=Rq4T8Qe3Fzm17WVutoxfT7MeZs/jpdYCUdI3zkmcOdU=;
	h=To:Subject:From:Date:From;
	b=XCEJ3lIfCOU4UjmAHIJMskodzNgV/X8wSjTjYJSSMheuCapwEUTMnoARlbejSBuFt
	 x0GTEBGoRjlIOCbhONF95kzQU00xCC8vY6jko8EFBkKLh2QiXiYAbqPlnRm+ylznb7
	 zSOwaQSe8ZaTnNJmecL9W6KtLHU5HXBU9uoYMYQzCrOr37sWhyk9cXPN8hyw3lR34H
	 so76LyZa+O5hitYjw8+Kb3OD2fET5EQvLzZI/iOpznIhQaWbndzr5sVBAzTWcIzPam
	 0iZcUmia983hbg3kkHIEH1BVAbxjFl5oqQC4n3NUSO8R0EXaBMUcSwOpvQUzNH25CQ
	 7vNf9bFS9AcfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF652C77B61
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 12:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168087234577.22092.5446367740074920365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a0cfbc97946baa2384d6b6680a0158090317702250ca657e6e93a5c6a08d72
Date: Fri, 07 Apr 2023 12:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680872345
