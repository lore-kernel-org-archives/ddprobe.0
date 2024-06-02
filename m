Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7146D433C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 15:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717341923; cv=none; b=NpsxYyU+Gr/txk/9iCFbsW7690gNjLcQCOlVNcJF7riKuJxfNZI8EcLTloSdduEa8IiJJLFb0Ef6Vzr6cJQ3yRAk+N+qe1iiM9hcusK/mPsKdLOxFk85ric4Ghrtl7X5FicpoAuWdl+mRZHOorNgP53nNfbxmf7Up053hppLvP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717341923; c=relaxed/simple;
	bh=SlraIkKsEmaRkZICT2n/RGAErgx1ymjv0YHH4LqaKo0=;
	h=To:Subject:From:Message-Id:Date; b=aCu/yJamR6a9BZSIRyj2mZxLk3c5kkZPHDOOdBqRp0DHodROa1fdZJnV340+ttvPJO2J+tN0s2+byWgCJGkf3vFParJkvXVFsQHfAHtnx0FJImGypJuvh0TseCO6jCsIIoP/lhPlY0KVOmFje2YxfbSbyLVTNPsX2NNNu8RuJGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+URyhnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+URyhnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F28C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717341922;
	bh=SlraIkKsEmaRkZICT2n/RGAErgx1ymjv0YHH4LqaKo0=;
	h=To:Subject:From:Date:From;
	b=R+URyhnZoEewDBpXiduLAdRu7wLSiiDBZS1INNyrjXnYQcWPdXSP1eKgzXHmeWGgx
	 qCv2goHuzDNC5Ul8Hc2lcRRNXu22vj7CiGWP7a1rdGkcMVZxjnIEiPRXlqUh6XBooU
	 LTRMZbBOEV+bMJJfdLu/lILThI14DEcPiNyoNxJco7NUzE7fH3nkdI3y0Og+heOYqt
	 AN61ic8Nl8cCgLDQhnKaaC9yGshBD1WzP0AHLFxJh7QsZ67Y7i+WY/7UsL+0MqZeqU
	 /3qy44rDqWf4YbWF1ASesMsIHXomqWDD2yfoVXKoQfOyEkOtAZhQ+9vC+Gy4ISK2zV
	 MO+db4E5c75Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C108DC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 15:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734192275.31972.16448248915097580222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557cc1f42efced248afe60cb94ff3cb13929118accc281d9b0dd4da63ce7d249
Date: Sun, 02 Jun 2024 15:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717341922
