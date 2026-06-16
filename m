Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847E12F8EB1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781612794; cv=none; b=CtKWxoHVOjTPZq1A1ss7T/tDDJBC6oxOr63pEJbFpwZ2lbhVkH/qX3Su3eFleUIjnmWZsvOW4gOUdQcxcjtPfJyJQYrqk6DWAL14OdQBDIlRPLJafyJR9+emgAs2kTtUWhm43kz79y4kRYRGLkOpuMcg7gQoURwMqKdf0R1i4b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781612794; c=relaxed/simple;
	bh=xbJsLfQXr8KTZYSyC/Tp4ZNjmNXnaJ0RE5g0L6D6Xzc=;
	h=To:Subject:From:Message-Id:Date; b=BJ6dsl92DxCX+DCDGJxqaD2FFHiS88yX2gSQc9YH0hQ+IdNHuaNxxwqIvV/RmpYtvzAlUlsj1gFiPjdHCDqyfPH8bOByEuIqskzbDUe+FZDqiFG9j63Afc4d3tJX+2HKT+SZzr6ruZ1iGQjr4OaYgoexYx39HwcA+2dqqDlwppM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+y+lpWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+y+lpWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24A0DC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781612794;
	bh=xbJsLfQXr8KTZYSyC/Tp4ZNjmNXnaJ0RE5g0L6D6Xzc=;
	h=To:Subject:From:Date:From;
	b=H+y+lpWdJWaBiJIJUlC3bPO1ovwzzhBO925VoJgXeJyfYdyRgqYfGo+lvwzXQgyJ7
	 6qPSEnxX1R5TNlSByzFiw0fzLXdHQHE3PT85uAVAwX4mmJs+7tbYTqp4YZHqvygQg+
	 xrYwSLcL/QNqPG3JDQCpysQOALZ8h1YyMUH3ERoLyYJPwDIPRXwW26gf9WlGdlK0dm
	 NdKUcY3zDSZOn51tmUqHEAv69teA9/KujIAAihlq411UPhV8H2rXiQZVbMF1AGVUv5
	 enwFM7kBfYS71Fa4i/TiOPXt/03VGpEfzWbekecs7t2hbGMsL3AWYLRtFWW34zxBqL
	 pBwXvdKBW9SIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E85B1CD98E6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161279393.8108.8601128787547555086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc77e9dffed6d3153e35d9ff52afec0f74f26e330839f5d8d9054ffebba7353d
Date: Tue, 16 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781612793
