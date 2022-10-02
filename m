Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D713D29B0
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0B3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664716253;
	bh=joK89LnbD0puhy5nXChNAoWIQ02/dlTCSorhXmwQko0=;
	h=To:Subject:From:Date:From;
	b=Wq0P0cCiDOJNkdLMk9mODjs8EdNTDOiaJoZ54FDZxAEibjV36Eoh9OELn88ReH8jn
	 f9Lc+PZlTcHG4Gvo2UIaCU9ZLeeuOs+QgpjIPz0oy5rR9pV3KJAEEmsnNoWW+ERcnr
	 7hkS0W5vt9Tsw/F3PGKfOzgjnVtigfBOKLFlWp2amEnfgaF+EDLhIWd+yiGFGLduc1
	 7sN+pPkW99rL9s00msyF9xLazbxACOaZa8kZ2E8d9WMjysIJrQAkLhBN3ZA86tMrwr
	 wp3sqxMJDFSynMFmtZeKEswRCjgUV37eRINMp/jwytJJIGBdCCCtVjkDNvOSVmGwqO
	 FlnvYxM0bstLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA7FC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471625337.22832.11256527401818790610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ba5929f2890bdf89b17ec202d5880e554427ef73bbc86e33ff5ce83504cc71
Date: Sun, 02 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664716253
