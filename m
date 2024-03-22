Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F364F387
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711075697; cv=none; b=uf+Iqs+M2RmMj/QU8lqJnPJS8MUuHT0je1rOoy+/mXJCMZAH+PZNt1tbx3PbwrRyU592g5E1Q+0brjVYKfgBBFGQXzpwb/bG3BWyO1nqTr/Sxe8LXLwEZ7tDXJYSLk2m0WxQ0V4S4Rsa4c+6Mo4xVvkzEWrWzD5q6lOGQN2vwCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711075697; c=relaxed/simple;
	bh=vmQ4+yNrFC5MNY+odbXW7beCHs+SxbFHD8AYgTGQeXk=;
	h=To:Subject:From:Message-Id:Date; b=LMFMy7em64EbYS0SHbGCX8gpou1aIjs5wIxal+2CugtVuk15aJXMjtteMQCGN5en7PrqtvRnZMYwVs/KXkLFEeJiUKOPLLfA0kjN2aBf+QlX6pG0cKHZj816AFgIV8VqTpP4+4I9FY82UB/mDhkOurp4O2thM3fpoDtCHVC8qNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2oHytb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2oHytb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8110FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711075696;
	bh=vmQ4+yNrFC5MNY+odbXW7beCHs+SxbFHD8AYgTGQeXk=;
	h=To:Subject:From:Date:From;
	b=G2oHytb3y2zBqL+UMYeJvHQsAVAiy6wpnlR85mI/96mDxH0TN966RUpwsDbTp+WLj
	 +zkVMNLENmaekRcnd5oBgZhyPzq69rkF6/4VT0YI/Rlgrd11MsyZKmuqzmgodtPxxp
	 S9/Spky9YNzILU4ryl+YKM/2P2z8hbL+So8ppHuqiTSo7id2Nr7bJOcQG7vBw6naND
	 sGp6A1327lndSwRrk5VtS/aa1Q2xxeRY3D2TexIJ/GRlKv6eHJsAhtzUD0zQe70/rA
	 N4/cET79cc7/eCq8NG3r4JROR3txKhNVUn3SL73IwTOynoxx9p/STibhbiUn+sqx8Q
	 wUe/YV0vob7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68049C54E58
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171107569641.4942.4845914246464699929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df5da4b9aae0f4fb70dfa0bb9e3eea7ec0825c03f3774d2ab1afa62b814075a
Date: Fri, 22 Mar 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711075696
