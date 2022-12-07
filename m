Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E058C1A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D90AC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670448654;
	bh=YGg2lXEDkMaav+zQ5+MCgrc8RCpIowU+fc2YJyrvpSw=;
	h=To:Subject:From:Date:From;
	b=sE9vOnCSeUyIH5X0P9csxDoq3Z3jdaRiTvAjZxJhs39OkYPbzP2SUAObsu26ELPdK
	 uybxb6p1sIFsoZi0E3NizOY+n33f2KnX1Y83VtqEHxTwuqhkxfNanS55t2ljpnpvBS
	 /u7+x7fsH0EgJyXozGmiY0nyJdpfLmEPwNKW138iKcByVrqiX3S92qHzLY/BvYAPK5
	 MffpfOEUmM/GyUQut3ERu2Y5yjjE9uEVYAaNjPORzoixrobm+mXErzKMVbx/3i7OJ9
	 QBAsS0EnmLCt/D5R8cl42HYdWByIqRL1My/p37wJq2GzhsQnPdnxBmeqrtkoz0eCJc
	 9sGHaYcT+3alw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF5BC4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044865436.17084.12084156328748195535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8220d14db8d26897883173925c94db2d288c74c4bac6b566a17e7e59b77f1c5
Date: Wed, 07 Dec 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670448654
