Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EAF65B
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 04:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4CDAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 04:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676780225;
	bh=xjNEpG2blXDOiQqjins/WkRzyWk1nUn1wHYXEHTjVTc=;
	h=To:Subject:From:Date:From;
	b=WuT6FFY+S10o8SmSp0j00g38O9PPvVy8HrtRqLm/1OuW8Ll66VZ+mFXgiuNJEqDuQ
	 STtAMX1ENsKmvo2AzlbOi+rq9UXSyErZkpOAhuOa38sciEXOMGfeEtYb98kQ9vOnaA
	 OJBmVAZAq8hSddCSP2gBQ9CTzgjWT215clDAvHjKecTZ4i5HxTTLqnC55fFyw7Mzi9
	 ao7T7ybisvXashmrz1GvMnHrD2fmG+ZC+qfInJ9LJW+ms1OFIhV8eRhyvmVcUpLrde
	 KGfGURuu+W9qmPuQFzNRaqQ+2SaEzzM9lS21cnMsJylTBn7PB4rlMHHqy4IWN6aP+i
	 9V0JKirhRL0Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9D8C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 04:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167678022575.4871.8247703674675072906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25a3499208b8f648995c9d52cad87d12e0f866b208ddb7732c3043c7117c630
Date: Sun, 19 Feb 2023 04:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676780225
