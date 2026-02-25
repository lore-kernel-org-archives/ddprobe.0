Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1538C4369A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771994094; cv=none; b=FUohGt5n/mRW9tGNVr9ns4OTa44rPVvwStqLf/MP0WM+QDfJ8bJo2CNGq/VDnhKEXGNc6TsS57d7lii9fE0BtKO5sXUqtn/j6d27cVT/uSUg55tax4BVoKbxgshtMPat9JiwQfLFQb5W2MSYwNWg8xeeCaE0taAWpMQvvvgJ4OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771994094; c=relaxed/simple;
	bh=2ykiI+Knsgi+F8taSqDNOciNysHs2JgDUS+jx/Qqk1Q=;
	h=To:Subject:From:Message-Id:Date; b=TAj/Abk4u0Qkp7/JGiC3Z6Lu5Cu51D71PAFxS1+gcD9xNRIWryVO3PVN8xjklQY+SsSylg2Nk7Al52Qks/7z0hwXWI7bFlKFGezKs6Y6C2W5ubtK8qjNFoZAAp0hZfaJP9t/gQwAGwmMagM+Xj9XVtFDHZZ/fx4+XAfOL3DdS0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g37MaQd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g37MaQd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10C5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771994093;
	bh=2ykiI+Knsgi+F8taSqDNOciNysHs2JgDUS+jx/Qqk1Q=;
	h=To:Subject:From:Date:From;
	b=g37MaQd0qVW/567tz1bKEAlR9XPeoT7ZV82Cim69p9xLrkDKSbI7aFIhjcIzjq4kb
	 d35LM189r1yQv4vbnTipLXZgt8dPd66a5v+dcYvB8QiVYUOhKuDSu0UefY33LoTs1i
	 jJgOmJ5Z0IkGScKFuiypw0M9bWbNNv7znrfp+aIGY3hUnIckAFoJsr/B/HF2wBbFc5
	 JPPap6gb2dVtyDtQtGSYWFzR8H0JPOmtTuOGee4sPcgKvDUht7lTuS10WacYNTMAAE
	 +VOKFfmkFZVibETwMCFq+afSB5CZWss6dJgJy8aqL6ZFYZ+KsjmGrihV+PdpB2r8qi
	 I0RLPPPxFW43Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B979F55449
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199409362.1672.485309507750162169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10be3856f62a52460fe63795b636d8ab397cefddae9011369fa40e8d6c78162
Date: Wed, 25 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771994093
