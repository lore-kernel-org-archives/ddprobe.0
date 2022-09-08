Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDFE610E
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C299C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662673853;
	bh=7BA39jcNeWbnKlkNohd2rAFLCxDcd49Kfgtctr8IUDY=;
	h=To:Subject:From:Date:From;
	b=YNintX0zQjodP6Hda8n1X9XFtlq8OoSosmxAIfWimaZiQJ+j0dmnqSnI4Pk2a6r4f
	 2lpep7u/tKOC9MYpoXXbR6gJT4C6G/UZLqwJ+10RVQDzr1VIeS2YtFx5hSoD6y65TM
	 W3YGxTCjAj9yyFpCGpzcg141XMTnbSusTCC8xMZeJmFLN948Jz86TSgBNl6BQBItX0
	 5Ddexd/1pqBWieEASvdQJ1k04F7evMzn38k1C6GdBfL1IHi6CMDlAUlHaFPdcSj5FH
	 fEhxqczS3jMNmqmpAQ/MivbXYVSPdx/p8gjH0TkRlM8RT1PXqLGasgbb3qgUJoS7+X
	 SSNVJmOan6lPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCCEC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267385331.25314.9546756961213563851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c108958d48ee3becc2e87d253e744339f64f8198b7e18298c7fedcc0a03bd2d
Date: Thu, 08 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662673853
