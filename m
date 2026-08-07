Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5958442F70E
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786101034; cv=none; b=Oh2FBp3dg319frSQoK6O8SxysZT2M0+EgJ9QMBTQoIHwVBB/+7tFS006FnDuzrkOkg/obYWVCGdxySjoyajhsRFl0q30M944EuLHyX1LmIkJOjruXNSiun0cfMSRt99fZ06/+/oH39clHKycA/NTX9rErbgcQzkNB/PzrWoejjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786101034; c=relaxed/simple;
	bh=L9yupcd0OTe9gfpAk2m7vwCg2wzLJrlgsz279KVxvtk=;
	h=To:Subject:From:Message-Id:Date; b=E6IAbOj5ouP4yYM2gmmFlnKc7hX/RnrYm9PdF9R4kq2HEGCoO4YIzj7udQ2Hm5gMpYol38/+vOILGL1gfympoht7QC9q1VDgY6xGHLyDH8yL94ku0jrBsaEF5A2V46vFM2Hcw8Dh3Ub1Vi42QIy8gQcVTHQ9vsCuzUtzvhP11Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH7UKYpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH7UKYpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B1AC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786101033;
	bh=L9yupcd0OTe9gfpAk2m7vwCg2wzLJrlgsz279KVxvtk=;
	h=To:Subject:From:Date:From;
	b=SH7UKYpWJF4LCNHSpGe9uunWQSO/B0RobCMrAiWpnfeliEzBocAwx/x8FdzKu9Om9
	 ghXcxhjH9cgFCW/mXqKS3pMPkNPTttZm4vsJqmNwdpSh6C3asT2ypMV5T8jF7bumrn
	 znt/OkudOaPjLyNNF9vSOQFqGrOJ0zWpnO9Eyv0b5Ppa+rU9xeVUTgC/JrkcKyI2v2
	 WPQgwk/7lWGOoHwzZeJO3DTyqk0nMe/6s/JGZ5oIfIV1H44Cev6ExY8O8eDk5p16Y+
	 uwrrhPMHng8Xyi0yZ2bir8D/qiAXqyKK4I2hwg8XhTVzfSf7fvVXHrjIvLIHKCYLRv
	 iD6ZGoeTnrRmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE0FC5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610103369.28881.18234558137277011278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5591d149329ad13718f1058aced14f75172050f263642cb6772ace5e5508966c
Date: Fri, 07 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786101033
