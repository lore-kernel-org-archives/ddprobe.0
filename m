Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2456D1BBBE5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764899574; cv=none; b=YuxUx0Lzw/vbTgQc9s3FO1DOaNbq8ngeQpPJ62FCYnERrl53Dy0Erc91kYH/beRGrJUhbmwZtuesq0s1/j4fxmdMrq8cHYkWY2nKFPK6tKUCNyd7RW9z29pMMa5c3+KBsBdZbJ26mh963yxtwEKRd3tBPtj4MJQ148DlK5LLJzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764899574; c=relaxed/simple;
	bh=0yPyxIiYjHd6zDXpHtU3ftsdm2nraG03zwkuDZ61kcc=;
	h=To:Subject:From:Message-Id:Date; b=nATwTexootOHAxi/Fe/UM191P8TEEVWmbIYKjV86G640bLjnKKxgUWYdVz08Ue7kAZo8Ll+IEFNf/uiAsEMD3urYa6iL5D8RM8SFDM5ihcVpXaiYL/PDBkjHCkWh5klEVnf1jFKNn2qLfwKccIaDsfZqdwXbFJO6qxXJq87Ff8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxgdIcjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxgdIcjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D16C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764899573;
	bh=0yPyxIiYjHd6zDXpHtU3ftsdm2nraG03zwkuDZ61kcc=;
	h=To:Subject:From:Date:From;
	b=AxgdIcjNW6EfbH+bFSGZ2tlk+vTP24qbAdxz4BW8xJ1hWaxxF/RSS2ccLGwmfh85Z
	 Epl6oj2dzEkiEWllJlbuS6ko+ygf1NISy3XTdMbls9f7jVKztTPLjxFv1WXOWgeGDh
	 FqxSYSLYd1yq0+/qFzuQXrpOUtfRoqgLkPjk4DsO0VER/20aCf2Br/MfRmohVDhxmv
	 z95TlmM7ZKgGt2+FUMKTbf+0YuzXJMdc18DkogB+FC1JLdHKpX/WjMrV5hkJwpE4B6
	 p4lmGPJ+y26pKGT1lSmDQt8O2yqmBFBU0rIX0t2JHuLiwbbIOOdga4LeQ0vU6wH7eS
	 /76Aa5Oh3wSow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CAD2CDF2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489957358.12986.490094896458487415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e04db67833a97356d216e22571eee0c3904ffc934577703315a86ba5b0e22a
Date: Fri, 05 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764899573
