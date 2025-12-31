Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CCB52F88
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767192834; cv=none; b=kMCKwk14FefyPFu2RF5A1alnddlU25xnCmDvPewDmhZCMgl2rDlpYYvvEg7VSrfdNBUCl5cbM3wH9IlUcIs9sVvliRngFBtKaZUrl1PFgAV+Bl+ZzR1vTZxneeXuNO3NsAkbKeCmJtRL5QIYiaiAqbD+PbbfUp/3WWcp9M6K95s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767192834; c=relaxed/simple;
	bh=hGzYuF2wAbNDtHX5HFQU0622ABqXqRv1plqhibJAI4I=;
	h=To:Subject:From:Message-Id:Date; b=quOOQd5LZm9aMHu9/z5hZpOHHGZcbJEcibPzmfuNWcRksAQq7TM7pVUde3tGh0iBDtrH7sfyoLnuwJBNOlucfq8SaD9CxCX65g1o7TTG5hLqdmBfL9zS0cIUvXKm/vBk8uq5YwRyld1++5oG6C+pv+hWdD9hLAQdg0E4y3jnmFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcKLIwH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcKLIwH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD32C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767192833;
	bh=hGzYuF2wAbNDtHX5HFQU0622ABqXqRv1plqhibJAI4I=;
	h=To:Subject:From:Date:From;
	b=gcKLIwH+ZsZqmY5Kh8ARDEBZI4rld/4voTH+YFGAl4OU2szu8xgnAeZm4S0MzDHdP
	 XPPyDy50SjgkiEIHoSMpLkuPGDcli18bEZ/7HPBysOosdBIRsKh5gFXQkcRn2eB09i
	 6IHE8EdN6DhS4ntGV2glPqJa9S9Cb5dZaZtbmq3YJhTBjKiYiDYcTUnUXUEHrp9dFT
	 ZHnGcTiboFh8KQCxPC3WoOkZmVl9eats3U/z1QoLdz2RD8uynhEw4sjZIe7dTvvxgo
	 M/a0K/vqFdwXbw56T2R3nFm75Vj10EWGLA2seWVTcrz2VYKrqwoBamlwbwIrJ3gizr
	 xjgqH/TEb6X6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94808EE57D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719283357.5863.13857696284147340015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9e6d9d0de77390118b0997635a36cd6dd2b8cbecab5cb104893ac35eb8d723
Date: Wed, 31 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767192833
