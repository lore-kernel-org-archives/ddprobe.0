Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB8625BEEC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749641994; cv=none; b=P3v0DVet3gxXP4UvwC+nv0kuVvqbTkXVmVNM7QHl3dh/opa3PNCY2TXl11p+V3jP+7bAjKhg+xq+mENE8x/4cAMgEazn5kGFNQGcbywV1Hxcpo53rrOLJ3g4hCFUct8/yo7SrXm583KEp6ek/z4/nPKhZIqKEx70Xq453//Py+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749641994; c=relaxed/simple;
	bh=C+P6Xf+Q+zdeJmU2UyK6e7hsiKsG3rkZ8i/DgITT+ac=;
	h=To:Subject:From:Message-Id:Date; b=YmjwOHSJUvpQaMOJ7JHeZcDWwDYONoocys57nRJphPxhtLSooDK1BvC0R0SimODBHgxOWvqw7mtLSNvjXQEbQ8yeZZEcTMBpZxxLtV0uG0jRBbk61WMfnfo1kCdIUqp1C2xgntX2A07SRHAzJtwUMUISWIbr7prhn3I4/pt8g2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=run0J6MI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="run0J6MI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DFDC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749641993;
	bh=C+P6Xf+Q+zdeJmU2UyK6e7hsiKsG3rkZ8i/DgITT+ac=;
	h=To:Subject:From:Date:From;
	b=run0J6MIqlGIQQFdC2QZgUcUn3SvUUdMjiKFFDVMOxkWI2j0pU1kRI4ysuEVjlVZW
	 4mrtmr5akKTyxibQ41N7UKtXLh4Gkz9/DOr9LhL2uNFmTFKh5RMBXhCfMHEFhNQL/k
	 tKfX00Mp+E1Cki6GjVN/lS0M7DjiFCXEgUjrgyikY2Q3zzY5tJeE7oUutzLfzs1hS7
	 yeH6H9BANIqx8kZFwPHX47fz7qJO9FLS2c6b9prvqOnw984ODagkBEaKM1ncfBY5vA
	 58KFjh0kSiJsySGMC8VxxdGi1tmY6xSHLynYLunFx8NzMiVw/MV1M3hvOSEsTdoYQB
	 O1aZWJl2bppHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AADC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964199360.16083.16093442945604427993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af2926b4b45566e6b4147e46ff3351c0356c18676dfd93bd354383ceb6bd307
Date: Wed, 11 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749641993
