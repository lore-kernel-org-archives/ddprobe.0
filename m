Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD45392C56
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776828454; cv=none; b=WQD9uaH5m45sMPXDbPQlE2XEx1jYZq/3hAipNlJvoyGDJE4mFxtpFietNmfbj/+jWWdHJrYHYgswBeRBF+WK2qEyaKqP47U5Ylgu05ppcmjk7yy6+a/nM9UljIGfyVykDwSFKYVLZlyZHLp74DAY5NQtPY3MlK9U7HjAVWUm2vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776828454; c=relaxed/simple;
	bh=n/sKGz/NXvkk9rEtQLxWiLGGHUzVj2hhbcNOrUvg3Ic=;
	h=To:Subject:From:Message-Id:Date; b=SBk2fZIxh+QOdkHsStN7XXLh6wF3nJN8dYh6e3pbnUmXJN9UzmgG1UKxGsWBDMQX095zIOTSMS8DqwxxYCTjonPI2YXAWnD8cMu8B2V4J9y5ostItf2+81iym18N/T963fp71w8LkrYfgREhQzTuWKQNw1J8JrFSA3nXug4mWyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8cBzT1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8cBzT1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE4AC2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776828453;
	bh=n/sKGz/NXvkk9rEtQLxWiLGGHUzVj2hhbcNOrUvg3Ic=;
	h=To:Subject:From:Date:From;
	b=G8cBzT1/BURJPR7Wypmmv8AxWSMx2F5k+DRgyxr3UpkWSHbh0d0BzPQy+ByaysLbi
	 sqsbj6m2sGCBUJ4v7yobh6RdVVNZlpv/FHi51I9SGzbUuvJdCO76k2KQa2qlFjSP7g
	 Z7D5230wrJ5XHE49hu5W7gqmPB9Bv/AoovuB+9SNUtkYfkcyT9Ibcv4IEbPrbgLmRx
	 enBL20JEKbPJgYOJDRZnxlegXOPbs2rMP3oQbTW/x+5492Nxv/app+HIQzH9yZhdx2
	 56PmEIrTNrwcsAWug/ifmfwKJUOK2Fnf1z4jwuj4Kn4FPFBWKzHmxSQlrrz1BVlCCV
	 IwDVJzT3UfvYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E41F94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682845368.11340.18155514111252005651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258a9ae8bdbc6bb5b8f767277757e3898c791acf4d1ab5f60a511b4547c91939
Date: Wed, 22 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776828453
