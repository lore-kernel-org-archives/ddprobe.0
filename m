Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537032EEE7E
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786100434; cv=none; b=WtydMUk2j/QkYa6MdF7HpeC24sqURRlG7/0KeAOdYajz+spjVvM3bbFhpSZshVYd+VjR9peBx0whhK1y0xotti8kwp1K7JrJAXlotRKrzQjlQSmYM2inYHDm/zdDNcI0VyR8o7ZSMAFwvzfq7g5G8KaSHEu939svriPtBdMzuhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786100434; c=relaxed/simple;
	bh=rBNGuc2V3I8h6Of6V7+Rorv0gobGK6ewCWNCk5RfVFE=;
	h=To:Subject:From:Message-Id:Date; b=RWimZ3FA0FuIkl3k20sQQOMCXR8Q8P8qHm4rYTj+fZfH/Ie0hga/1Pu/hMaS22P3RofsKWqVByRau3Ckp2+7wn0y/6oonEOiEsRE/OGTQ39I3+VqsyTIKoqqjf0VUXCN+2+9s2RkLtjfZP7gof5KsKlSxtgK1qv+mgJRYVVeeJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWLX66OB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWLX66OB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13ADC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786100433;
	bh=rBNGuc2V3I8h6Of6V7+Rorv0gobGK6ewCWNCk5RfVFE=;
	h=To:Subject:From:Date:From;
	b=kWLX66OBLr5FdnsTt9Y562a7Iqtq0imd5TIuIXeZiwOoKENWYHkWJSMHXeoyy+zGT
	 2Bq9KZRgJF0lEwAvt/sGXUsqFKCfv/jrasKBjaTulfU4DGYVJnUHPF1jDJaJgqUcnk
	 15rbTelbkCsa+4xJzFuXxsB+Z+tWo8Re8EjwyPjl3+1swZbq+yhIymUgbFBjBo4aVF
	 hMg8wRbqbDdUaoxSr465Al68njASykWEG6cNSM5AM/bO7hmmndOy0Cb4twBVvqQBuO
	 y3LptOd2/aDAZheC7m6WWG2CFoaEsN0MSmhvNOqOxqhK7j/0Y8akBzEa2dxsqj3zzT
	 JubKIRTJIOCKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CEC5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610043369.23602.9762907815298309423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0679333967161280a96b93edf2ad78062b1c089dd54f76acd95208be826a67c
Date: Fri, 07 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786100433
