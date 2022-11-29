Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEDA2F36
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DF1C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669741854;
	bh=VdKttSTMSy58+NUpMOk/jqQ13TJ4p9fv234/mIX9gfk=;
	h=To:Subject:From:Date:From;
	b=cmHbh/8crzm+ZE8/t6qPOTbwMkLlBUcl/WEdXsvJxKEDi2F9cACumnztVTC7tkIjL
	 ej938PhcAI0/Y+37hQ05BUWGYoe9sZ7TkHLJuE9quf59p7Lmodn1J2rBOjvdmMtLza
	 xcEujymd28puykJ0Ex+nch2jx8/xg12r/8646NLuavlvv3EE37IRBr5DEnCxIkN80/
	 WxQaNNQpc1Eeyrida2m6VTrOf+iH7MSdadJUK/Z1W4zu4dADmKGaUiYMCKFByMrwjj
	 KfCzpCE4izbSEyUwjQXqrakUG/8gu+vAaJA1cR2aMsgNogHyDXZh3qPPhm7WlcDz7y
	 o+DBbtg1xHPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5985FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974185435.29723.5927173046003058552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6130b008489169ec5722e749b1c5e4b7680685aa780841ad445dece0d1111768
Date: Tue, 29 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669741854
