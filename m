Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C257B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D10C433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661376652;
	bh=hFNO2Qw+XhSSW4hLlfb+0rsnz9dEQfjXdwXqqwlIASA=;
	h=To:Subject:From:Date:From;
	b=AujmClZOv7vGU7q7UwR3JtJLVWO7kBj+nPz34pppKsJnUtQApaZPeRx55ZRNOWO3g
	 LcwaJvIR+W0Dw5ib3q5WqgxYy+HB2y4fWnygd/ariENAFPEDiN0QiN9+ts0Fewwo1+
	 B/0PQM0iLQr5AGdPel4Oqb4ZBvcRn8qtlhYVOew9mzxcfiMzNh0QnfT3vzsxM2Fvma
	 ll2MKPSxuhPRK7NbkhjzgOKzwGWji1waqNR8paVjsvxqS0BJCIpP8DXTvLpW6XivOR
	 eKgOMidnQaS0j4F5gOXMHVQhFTBw4XPJCZIx1znhLwu9bBEjHPJ3/XerZ8GePUcik7
	 AodfxksMVUK8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640C4C04AA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137665239.2815.10371002713238888942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b9124de4e7d3c473ac8c24282b88b9c6560c83eff3ffe0faa8b22efd45bdaa
Date: Wed, 24 Aug 2022 21:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661376652
