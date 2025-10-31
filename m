Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D7A3195E9
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761908394; cv=none; b=grN++SRFZTk1AVWnRIZeh5Hn/WQhWLctgSIfyR1YpKZ2BCIV4CR+lTvZqqnuIpu+EXnLy7+zb9gtsw8nnp35cLubz7Yx6ybq6Tk7fuGVd0i0V+ZQtbTAJIqm6OPu4FsCITVWWlUouqlZdgSslPwGqq3P4Nu54kd24TSM7js9GLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761908394; c=relaxed/simple;
	bh=4gHRQ072Gq8HtDg25LLNU1y4vcZ/MfmVK04xg9kdqjM=;
	h=To:Subject:From:Message-Id:Date; b=XOfSuJ4ewNrmjnOOWazBUHiwUb3mlgpOh5O1To4MplN34Z1cZYU/ueTuh39JoMWtJVVDM5tWS/Xyr44Kmr3CigvEB3q1xKuzoEGA/SdrCyfGP0DdbPQBDm/yddxF4djEOWo1cYqAJjMZ5Rou2fi+yoRDHOorHQK+bWkmLVeYGdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfAChXxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfAChXxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9EBC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761908393;
	bh=4gHRQ072Gq8HtDg25LLNU1y4vcZ/MfmVK04xg9kdqjM=;
	h=To:Subject:From:Date:From;
	b=PfAChXxBjiU4ZYhSfpfljzOdzDqchgnXrRb8sGaTsgVy4VEQjWdu8uIxz7hUB6ZX5
	 IORSydCspm9t5xiCgQAcmcWtxjFvvlVYMPLlutZQL1xdLuK5I9Rif5t40vpu3JbICj
	 taGNSePGuXSMgeWw5isKBPMWyFj+S0bJHSe8EX2NNB+7fJhGV3tgg3YtMH5bd3NpQT
	 JGxJ3Ns7eFmIA3yz3kSXn/sT28sw9XT0HjUHQIbPWKkhsSMSPVNeL/umxZYiTGzCdk
	 /w8MSYnLggwalUE1XVskdpxNszf5F7Pce/Zg+U+rYywA19ma6ZM2HFpBa7ctQHgQoj
	 ZOav98sWISwpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A1CCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190839358.24827.6273670815524501560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceebb715bc8294b2dd4285ee392ea2e0eab309dea8c823bba8b21317e382bcce
Date: Fri, 31 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761908393
