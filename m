Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8C11448D5
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776625054; cv=none; b=T+UB3GXI5a1wlaHCQBjNKBz/2AOssKDPIRDkfyl4TwYLcf+PorDJDPQ4SaqlkksP4IA+0wWp4AcdTRxGVEsa3X+tQYO2izaC6N9JE1J8yF5bvTJGWZ93PERt/FiGSK7sKj0f/PK5J9O9TSAyLk0kyXgpyX8hj5+NGpIIBkT72NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776625054; c=relaxed/simple;
	bh=UIAPgos75z/rXjbaynLnk/2UoY+DU5LtvoNsqMs4kP4=;
	h=To:Subject:From:Message-Id:Date; b=OLtSCWtIj5kc9oOeWLRbPX4GX9YEtVg0+7ZyxEA6WtW4eHuefPeEvh+NM9Pzhh4BW0xmdWa/eOBuOANHQ5dtG8p/68J5savXzDt9k3GeFN2Udazh605Ez7XswBrrgLG8vqmV2C7igK8YXssG/rdbKci2MMyvdGRBpvMVWmPc7Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKin5+FQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKin5+FQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1705C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776625053;
	bh=UIAPgos75z/rXjbaynLnk/2UoY+DU5LtvoNsqMs4kP4=;
	h=To:Subject:From:Date:From;
	b=UKin5+FQPHvQRaWrG6KVtaUYxrILyW7+q/5UvJWra+nSMGIllsjTB6dGUzNVqM2+O
	 uO55lvkKmxefxOmXIwDSN5GQwQnfN4MMYXuV7fnc8qgBH1XIYg6l+DJLuYLY5zDWxF
	 X+/AZtqeZauxbvG6PbDtzfK994HrvT0QRq9TcjjTXJOq87ydhf1/a5eZqNFWjtukDQ
	 BKSdHGRYPA8GOvnpvO8Ka4+R2HfLkbNwpz4nDpHyv0mqgrRtm65P4nLfN71WiXPFwS
	 2gdIywClkdG6kJFyt3lDI7vo40b32qj2QUsiZV3IOE/rBT2725C2RSXTJTrw+8PwDQ
	 Lo9xaPpfKzRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1236EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662505369.23580.1428484076530707014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f386a93e55b7838f3562ce7737d97b0ddce43a90bbc40b5376aee101faf155da
Date: Sun, 19 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776625053
