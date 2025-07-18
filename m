Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B161CA84
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752826794; cv=none; b=pqdxOKaAcHuKu8eaYDrKHfM68MykiT834XFmsqOE5Jivq6d0MujjBpns50B+OIqsMk4nHVMa1L8L6kAILewXuxYMfE6CWufzx1DacsFJSHfgjRKN+X710dhHEh3i0xjd/UhR2mkOwq5hiCNYFsq9xnql2GvZPf3TwQBS7pfx5Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752826794; c=relaxed/simple;
	bh=cGWDQt/fGpAyyVuRiZlbWVLX7J/6oSqHyAwuCPaiQEg=;
	h=To:Subject:From:Message-Id:Date; b=TdVb0vO5LkYWz2A/30RCVEBxMqoCtCu4YPI5pIckfNKLo7AlJ5cdCrHXuYqlxuSP8uhYliu++0ywmniy/Ok8giXlQB/CsZFMJmHQPUw3YePDCiXpKn5CZKe5fUElyDpfJVfvlnrRGk9uPBoxAK5Ci3Y9E0mAG5AR3Mk0KGq+Bzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA7HWnA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA7HWnA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CECFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752826793;
	bh=cGWDQt/fGpAyyVuRiZlbWVLX7J/6oSqHyAwuCPaiQEg=;
	h=To:Subject:From:Date:From;
	b=IA7HWnA7fTQsuS+dZaUUQV6bGjnEw1p4LAa2JhDljv9fXTvEh0jwXOTMXOkte6g+1
	 m4TyCgd2P3V+GOBiiGFJbgF25fTfFR7hWZoFD0OESIaiSt2tssxjM2+fbt4umbamHI
	 R4achhhSMGivUa+TayUtHsoNMrwItjsdC+Eb4yxkP9NA6uaSKLOI14v/neS2xzp8sJ
	 RVSfu1TkgDnKq1GJ/NIK4pjkh4pm7jxK4td77mwQUvQmFqwKM+yGiAm/iutSdIlVGu
	 sTZBttm0zWcZTs/O7ooorrNEEeAtJADKj+XtHNKfsm5QTTVTW2DBrmQi/3owyFt5WD
	 WpVNUgJc5s8PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EAC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282679357.5220.17582886700472808047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1438cea8c679217a988145b717825ad3c29fe0e5f75417b419d751058c50e02e
Date: Fri, 18 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752826793
