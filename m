Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F6405F7
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780112614; cv=none; b=f0Nssu0N0gLrc3AnWiGLhLpyLs3Ub0ke65JqzW15tajQSfaiR0fFZO3fQBnoiKFYk1jFJ97DUGGZBVqheaNJGC3puMzJUi31k6eWMLkYqSJpLRIwqxi0DiR0ljJuqRjNzfA1alPBCnBx5LcdPcZ+XuHFZYRPkjIv6QWCtVtoa4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780112614; c=relaxed/simple;
	bh=irSTm8oUq9Ik2B+70Yjtidm+neZPBnObN/LJ8NSt1gA=;
	h=To:Subject:From:Message-Id:Date; b=KVmp4ouZEHPVd4aot9EgfGx4YFtmgTPq0Ta1GF/8vci2/3KF71mPFvA4FpVP+YccGycx5dXyM46Qx8mJTXUWU1aJOPzVAHLKVb20Pz8liwkb23sPBo//lam9QTg5seOk1FPX/eoDWYaTw1G+iNbr39hoWO2dKy2y+zLBSe1rYLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rv8tOjbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rv8tOjbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6061C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780112613;
	bh=irSTm8oUq9Ik2B+70Yjtidm+neZPBnObN/LJ8NSt1gA=;
	h=To:Subject:From:Date:From;
	b=Rv8tOjbZOjRY3MJMn+a2OK7IM+0NLa9YWMkhdJCq6JrPoqPpo81l3mKUxn5o+yVag
	 PRf611wc3tf7asI1Adqq3ZVfkiV7E0xS6RQqHJOKm68VWWyjlQdr9QrZbbtsuEFt58
	 ba8/0cw2hhfRJ5I/011rF4/8oKcWVwJP7V+SDjKhYxF4xb2krQZe8ht4IQAuU4lbrq
	 s3O8KLRt+njSz8LzTF8/4d6SCF/UnLVu2asWfZVhwSdLFwq8l0lGnRmAphbQtO7Nlr
	 QZxqku0k7XAmnZTbn/R+noBzNZgQvM9KiYwyhV8Z0EV9livtNa1AHlIo96KyvbphIP
	 O1mEOrVydB4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39CCD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011261368.7100.6088830564557757430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7516934bf4f380927ae0031fc02c50e606ff757f2b495a9537f27b074588243c
Date: Sat, 30 May 2026 03:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780112613
