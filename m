Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1B53A5E80
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776691054; cv=none; b=WuiJ93G1XaD4+T51VoG7c6Eq6kR5M0D2UDv6b2ZNdOQIyGUOXaFa3q1MRjZAfcdBg9V/vpfy+Gv18c9xHGOQ9hjDsZbVKjEfFwFW4B6kiKXnFZq5f8ujWhUVPZmX2GPZJK8W+vXNIoHntvNAjJuE++wGt4+gUgZb+TsTThvzrWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776691054; c=relaxed/simple;
	bh=mEe7BXT5Tv3ZcTdMr1nyPkN+uluNhuCkeIsmTCfjD9U=;
	h=To:Subject:From:Message-Id:Date; b=qR/OZtAFwbHWHlCHQyrKWLmhwqigR/vP8bFltdH19fq6TwKODfmsPid8EONhRzA2ChMGNcu2GmaCmA30bC7epf/bDjG7F4yXK3MBWwzL1ng2raOBb0Qa1eGtYRXGQp/xqY303mxB4PXLtZUqYGQSjwZ0OemilIU1wE8razx5MAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n63b5BvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n63b5BvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82B3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776691053;
	bh=mEe7BXT5Tv3ZcTdMr1nyPkN+uluNhuCkeIsmTCfjD9U=;
	h=To:Subject:From:Date:From;
	b=n63b5BvDYwG4XToqo8w1YiWTO/4ZqnFws0SE8D8Cpe+JguvATHthQMt5SbbwC/ZuV
	 QYifCBNCyfDoAA6S5dk+haXwNnh7QHnvTaFMJtCsKVol+fBQJqcOPZfMLMgvxmbAU+
	 /gTthfsNheoW/ouymZOFo93bPo1gtOrs9HbMUQ9NLA3H7VrxIjbyI0ItTtbHIYjbcI
	 RJVkwduEHVNjlcvQedyxk7Eeqcy58Ag5DYOwvqCCJtg/0kGOAesDQTHKbOuXdyDaTf
	 r6BR+TpVm3fpzgQ41PxpWIawJK2CRvUQLH+KXr3CKx+QWbWBr8gUSCi8B+B8IOasHU
	 EwE66lA/+N8tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CFEF588C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669105373.32664.12826104880106753087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94e4cad2584dee17b3478dfa7566c8af11a3f0acb2591c5f0df52ead5939eec
Date: Mon, 20 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776691053
