Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B33AD20
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA82AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677192905;
	bh=6HEMg0NynjdZtot8sRulf5MPy/qIwrNPKkWfn0x47JU=;
	h=To:Subject:From:Date:From;
	b=DHKWX18rj/TKC4Co0+yJr3udxyBFYXgJQl3co3ZTJQBlBprWgdej2aqjezJ8r9/Li
	 rqi+7oDLvtD8HO2RtqxQXo3H71KH+jiPMHp5QJYxRvbWaOX6cYGJeagfEsjhWd0pHS
	 vst5AfX7RLM2BER/18iGbxQJi1WcMFjin5to4YfAiD7iYnvv7r/dVeQhPLjyXlo2nH
	 hVj1y1ri3meBs7/ZBILTAwrvbjCvX8W5lSivVmmH01hk6pKqRH/VF2sef77S8w6HVc
	 gSGODptqvUfai0nBULO4/r2C0sB1g1IHewY/5cJRls7GWYAPuYCX6tYm21Fn5Qd930
	 9V/1nimEyv0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DFEC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167719290573.12222.2311732208306119690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9837241724d71f40cc7113c36cbc9735d30cbd951006cbd415a4a78dfc8fc80c
Date: Thu, 23 Feb 2023 22:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677192905
