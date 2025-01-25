Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E7E1EBFE8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737768354; cv=none; b=Dhjmc2n8jr9pSyHoln2rdxYrwWYeyTH4DYFkFb4EYBFyaubcXDomkkzA1kiZDLrLBf9mfV+nDunqFoJmCUP4/1039IVdc/khZsMvH2ziG8zK+MuJ7NeQaQ7nj23DtksR9ej+9XG55+RMb7c2jVuj1jtcy7/Ot8DwaYQmbQV7Lnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737768354; c=relaxed/simple;
	bh=iDOtxtCuUXeW6irIr+e1KHxBDkWzCRwRvCVSUWWULRU=;
	h=To:Subject:From:Message-Id:Date; b=UefyXLBoM/PZ8tR7S7mPkP7XiZiapthH2fdgQ48D1COByMEwYwmeuOgMzKAsnJDNwzw+vamWmtOHgnodPBEMMmSZurdKMt7YhFAc2/vVCO1dKpg0ymTFmciZg8P/z6PHh+urTu2IADJ5pI8Oc+sdxLkPFditZxXGAr+Zn3HtJmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIYS16Ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIYS16Ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC639C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737768353;
	bh=iDOtxtCuUXeW6irIr+e1KHxBDkWzCRwRvCVSUWWULRU=;
	h=To:Subject:From:Date:From;
	b=DIYS16AxKlpJZ+/URbM4JEOj0wVWTxz8HgCMlABTV2mT0wbxSBFlYyqfP6NuXaJwO
	 OJ+OfnY62c6j+Uis+UeM3bI5rQOr0YVmimItNQpgOC5JKb5FL+tHOpRAWuMGTuWRms
	 DSOzyTisjdk9OPh5k+7PKKi61PTCkpEf3e6qOyElUKjNLw7JdXRlvZx4K6tFbm164y
	 4lFt9XKyO4BlB3F9mWWTWWkGTke+Ph7ukKIYTzSZpVpbSud4muh2LKItxE+PqbPe9j
	 MC0xr+hyMRIXq+rxZV4+1B9FGNt4phnVD81vgj7npOKb2+gli8qdNDo/T6NKogW5su
	 V9ViWpkwAbR0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B1AC02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776835358.17806.17386455044184154776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee85576c5f41befabec94ae360ca66456c38b22518da1c0af48744d275355d62
Date: Sat, 25 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737768353
