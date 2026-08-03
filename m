Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4773530E85D
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785796834; cv=none; b=AScmqKdK9XrIB6MyJ5UYG6O2JldHGRR2AujCmgEGz+zRvdBO/A33UnZOhnBtHnQkVIU4r4vSuTXwNkbnnFD22iiWMEJ02dQ8O78jEB1id/Hi9eexvoB7dWz/Um7xJrWK12Z2qzk8AGSFjVlusuyw/xcIJCCn7ISS80vHXQ6pdR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785796834; c=relaxed/simple;
	bh=SbSUG4xhbbsymf06g2gKpQ243oKV/Lbz8UP3QMbZAGE=;
	h=To:Subject:From:Message-Id:Date; b=GfQlstkBFyGGNXzzEf8lILJ4ZSgP0oWW6g0B95ojN4OPtJSERcq8WdMz10ULidFjt0Wi32T32G+kkRJhNv+zxdkko/O4a1U9p4yM7TV8dHlosY9mzt1nYTbJLKbtjk8PNi9iQybI/+/MrzeIw/7rQ54xNbpxNHK45Wm1F6a+wCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL+oV9d0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL+oV9d0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59B4C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785796833;
	bh=SbSUG4xhbbsymf06g2gKpQ243oKV/Lbz8UP3QMbZAGE=;
	h=To:Subject:From:Date:From;
	b=eL+oV9d0aJ7JPTj1UhqFdlYM+rONaSnrI5bWlASAipOF+Frws14YgJbTAuzaIdnD6
	 OGLi2Pinn9iR6+8iIGTndR2W/nVuHf+HqA1xbqQG3zRNdwLRlnWEdi2AWiyyqkSTVI
	 IAzCgnu02X0V5nBlnLCDOJ3QHoB1Eh6bMl+hYEnH7AfRIRH437gXMpfroHsNDRU8P8
	 9lJdEUKubH4YiynzspLvqDG7H+tq3dcnp5txYMBHeKKeVB3nGX7CvP9Fzbr5VShSu2
	 zrn9Zbc7O9+POgK2+yW64Y0ICBFDfVI1JIcbKF7HGmWstEEum+QTMM2nkJatEHKWzG
	 nqn8hpaLztfTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30BDC55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579683370.2234.1322221583272586557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcfbd390ae37249e14e32aa70fc2a01d34704ad2ebf04812db166d640ee3da7
Date: Mon, 03 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785796833
