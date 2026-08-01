Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BBF25B08E
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785572434; cv=none; b=FY7cWPdH3+gkC6w/JSIulZwdl6ZYXydZkI8JRzFZ5P0Pp068TUxiaDdcuLlDe+iTowtOem8+AVXZfzn5H/qjQvmKPcs5iJFP0lLy+lWZCI3moHJHlGHjTNWJK1/y9mhPCAbcO/ArQMA6T7dBVDhuDYIMl4Fn3bgbuNI02URREOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785572434; c=relaxed/simple;
	bh=sVHVp+TnCn2mbDyxqKo0j2yqdjIKdXEKLnQPvX3jI+U=;
	h=To:Subject:From:Message-Id:Date; b=Fnu52HK34u63domczBHYvWE4MvVvg2nRhdVv32Z9IeeYw1ag6pAHZeLMBgO0yZVmnxV394o1p2hSuh/v5IMlCuVrw2C7sO6pTqpefOB+T7ozDlkFeyZ1uEo5FFsBmfWPmEpDh901Za2sG+fgd+PbUPj+JeFhD6Af4YpPNSAk/xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5ZOR3m+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5ZOR3m+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A9FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785572433;
	bh=sVHVp+TnCn2mbDyxqKo0j2yqdjIKdXEKLnQPvX3jI+U=;
	h=To:Subject:From:Date:From;
	b=N5ZOR3m+7LUmc81fp9/HZLEvEiQe8kbMRmDe5bqoPTYWv5p7PopI0bTju++N7qzOG
	 oGK3gXHC1QSZWV4qd1qPWc31vG8RouCsJ/GsKjVkVVtycaUDm+jLU0f6jTM3UY4D8Q
	 1oUSTbynMo3JPp/B0R76lGpKeGu/dls1pzSmdRO+mNg9bACSLVyu62/+4rPpzDBmQb
	 Z3Goq3h6lk/zRqH8Jf4PRxkd7jRFrzCk65VcFdviMZixWVNY5dk8xDFr4goWTw+tVa
	 b1quf6OFEYqEsbNaGJqRRVAXgJ/bqB4lrjuQbcdJ3JiU30STEprOvxMRDXD+N5Q/gF
	 zJy9lBMWLcVnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB650C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557243369.14218.7211629142111367519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc35d229d9c59e8fe5609e784ddff23c421854a044fd6747aa0773a9a564c259
Date: Sat, 01 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785572433
