Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782C3CA66
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DBDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695512108;
	bh=Jp8Gv3xGhBeErq5QJcPCXfU0taqSyBamYmuhtkgzRiY=;
	h=To:Subject:From:Date:From;
	b=IbZJE61txR8TS8Ak00/orkJLOrpKbBPU5rVanCkO4ty+q41zllY7C8awMkZSbHMyt
	 kujE78KiljpJhZ9le4pJZCaeEvZleZtJnDRGbaNWXE8lwHJem9fIKG/oUhjC2P1mH8
	 GE/2BsqKJkTFOa31Qzal7g8uhBnYyzJ62P6f/qRf9SxfjNc253N7WBma5fgx8RcB3x
	 c1rXR2rJdKTMy0ToJI1HJXTsH8Su8d2sLjQ5AoEclyXyS2O+puoNEHgxDmwih/K5QS
	 q2ONdf7V8uzEekwtziu80PsnYaVBH93HBJa6/2yiakxjG8nb2uQo3Wf946ulbxGBhc
	 SIjtLihpkMyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA400CE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 23:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169551210866.379.14375719000195127110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d866385b4586213b52d3a6831bea85aa69efd3dd5da36021be8e2342d660fd
Date: Sat, 23 Sep 2023 23:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695512108
