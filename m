Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC5662A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 02:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAD5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 02:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679882525;
	bh=k4VG3+g13ZwUmaTbGldJGUhVnqFw5gtpwDVw8B2sOUQ=;
	h=To:Subject:From:Date:From;
	b=vOzZXYXLlMGiKmaUN7GkUHfeYPY5zsXWGLxbtSY7zqTUTRp5gJNsR7Ai9IvOfXRSx
	 WAOHldyTsOKv6VyHxnr7H7J1Tv7zYhMj/ZDZSLPt/v6k1vO6oeGT47ImfH/dx4bIlv
	 Kn1CL8UpO5GD2MThhBH6ykBTV8zQLuOk3t6JIBcl/Ws3mvSCQcF8iMfigJC8sCvKlR
	 E7ElLMipg5RSUtKZeBDQM24bsHXxPYqVK6hGuzaPvTu0Kz8mRQiiD6/NA+rGFx7Pcz
	 55f/+brxVcQ5cuD8takc/jN7mBJ0Zv7+ZCVzCzeViX6LcfK2X3byjDL/5NP6DWF1Ps
	 W6wgqD/n6kVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3943C74A5B
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 02:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167988252579.7889.1346651128898685880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c4ebaee842dcb3dae5716c9f7525320a97843888a928eeeb2ef84a8e97cf42
Date: Mon, 27 Mar 2023 02:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679882525
