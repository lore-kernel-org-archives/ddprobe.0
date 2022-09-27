Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B291633FE
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D58C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664293853;
	bh=UECxx5Z3hM1xYdPefPJy3pLaPwWPhY9VhoMU4qgLgtA=;
	h=To:Subject:From:Date:From;
	b=Mw6bQXYkvNxfiSmcaUy1aIHVOO0KrW0kvEVAvLm7Dr0PkR9UkOMw7qvxGILRYaR7i
	 fF5o7ScH/0GtavCkPdSwLJaiRCPVNK07oNfjYOH3eUXyvR0qI4FykQF5a1Y+AmfoOp
	 +rXSxQXeGD5SgTqP+MuQoZrfCtTDuKveX88jBDiJPqmSRJHYKare7W+hPCP7C/lTuC
	 d6zTbgK68I+Yhw5z/qgG3UAZLw8km5+FuLxktAC3Kj//wUvoZqCliYJg0x6BXN62uj
	 yW1z6tfFo7JY1ENUpDHyZQ35V2yAMtvbQ5WVAHoslLFl7zT0PF8YMJm83fjooaXF+l
	 D2wGemfzN9Dsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500B3C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429385332.22183.9692210204269446590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e239fe466517fd6c06b5cfcead84b3d953b3d4d34777eebfef772a88f6e9f100
Date: Tue, 27 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664293853
