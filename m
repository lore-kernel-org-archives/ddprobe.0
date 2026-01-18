Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B47950096A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768722834; cv=none; b=lr6psG+eIHR46oASKfRmOgk8GP4MNZlzs+CQwGf6QBLc82A+q2hEqrLpW2DufWpvvYvOY+2sFkoaDUlaDOFlg+Hn7ga2QWOE5Fc0t953bztJEnG/MwBUo3Abf6weSaar9u9k6RQfqKQm3sAZOUD/y+XAjH6YLxj3xgzRH5HL0Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768722834; c=relaxed/simple;
	bh=Yq7WQ3aHDY6hH2pTVDjynP+i3MHmFXoBRPh+SYLyuvM=;
	h=To:Subject:From:Message-Id:Date; b=r4IJPTcdG34JlWVznLiyZzeSHIjXAz4jZ+3JtcBrP1xGCCZyfiQ8BOndN5fnZnGDZKFLvawRk8/v/epVIY31sQ/9Bb2kE8IgFEdfXDWnncY9/U4oQFLupiqV4TJd5/QWUgXJuVwlHWaSzHZKwqHNWBJb6L7fWK6PVTMAQfesvfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGbtsa73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGbtsa73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A669FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768722833;
	bh=Yq7WQ3aHDY6hH2pTVDjynP+i3MHmFXoBRPh+SYLyuvM=;
	h=To:Subject:From:Date:From;
	b=WGbtsa7359JfuU/e3i5vrbhiEQE6sUednUwXNV+NDlQ9TGdpZXbruvCpOGA8j+Sem
	 z/iaHoqemINVIh0Qminm/5/LXHkI6vGBq8eGDh1yVJHD7tfNPP9bY5Es+mhYpw9/qL
	 o+qeieUST3DVId2WXUSzh4j1bxbt+9wlBLrDXS/aMARTCyJ0wBjT7kzgYH7uC+Rczr
	 33RUrhaUQ/x6ElEDDNDNGBZcPHKcshwLLw/Tqe1mIpkx8w2MwHwg8sAve3Bymz3ma3
	 04A+diuxWZhnmT2Q4hrRSL2skismqnh//NrYsE0rvflHa0hVaJcAoV1pwAskeldSgF
	 EDwlgnWan1kBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9DD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872283358.10220.3207468167351918726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f4b68ac4226f8a70eed462312415317ea0a177c5fe305b9dc1feaac228889d
Date: Sun, 18 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768722833
