Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7A31116
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D740C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669892454;
	bh=82Xjt7EeFc6CFkq/Ox6uYjfoZG9tHj2xXekogxJdCDs=;
	h=To:Subject:From:Date:From;
	b=AtQccA8Nrmhg6RlUBm3cmmLGDSB9UZqN8r3CeFpaI0tkS/ASF53NafgGJZ0X/HHvu
	 ZY8VtfEsOjdOOOOR/Ma8zH09Qh3l92pqg/6f9SfIWrhUWTVPiMFuN3Qyd4tLmaKPNh
	 PFixFGcXWQWgRw80MFo36xAEfY1pVmOlp0+/ohOKN/I5lgGbeMnsbcUShEpf1SoFSD
	 LV7I2Ij8scEFw5grKtijvlcz/C4BcjX8FmC040ESZhaMhzm7YdrTD9ilJerDV2LBWA
	 AM1KHO3ygUA4rpjRPoEnzHmLNel2yART/mdIFpCNNfGTtiWVw5XupIJhoclkLNE0Tf
	 eWE85ouJ1HFMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 595BCC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166989245435.5635.13427640459242385338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b10d895d919c4cc2756f61c67f957d33ce43c5991c650947a319957a2e62b99
Date: Thu, 01 Dec 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669892454
