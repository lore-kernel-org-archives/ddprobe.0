Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171B225B1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772234094; cv=none; b=EAc8Ih8r/rIUJnoAcK4RDGp481MtyQDSHsSnInfPLRuMUr8Q0udhI4h/4DH3YT9QBSkdyzKuFrBvX3ZoBwgGKXtKR3OCjjneMTc2yBIcOYAUlGIy6MjpzAz03WEVzarQ1/IUpKjnQE25hf6D/kEA/RM64BCeCoU/z9HsVVlwvpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772234094; c=relaxed/simple;
	bh=fCDWzG8S7PhWTjpmyHcmNL8cRFTDpK4XjGIM23JInTA=;
	h=To:Subject:From:Message-Id:Date; b=FiknwcLFMClMKjmwKFpeBZ90vEWSt4TxEkBIircbwOewoyL57ZvQHrlONJK5VEoM+8D2iW5Urbc52Lx8XrwsfIjvhSi2K95sbCiUAx1PoXxotsqFNkGYOtLBRmUjx8Nq7cS3E84dR7ooFdZtv0OtHoGXDB1juj3wmA3CNHHfopc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQjjRPcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQjjRPcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C84C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772234093;
	bh=fCDWzG8S7PhWTjpmyHcmNL8cRFTDpK4XjGIM23JInTA=;
	h=To:Subject:From:Date:From;
	b=ZQjjRPcC5O32SDddS1Z1y6wPn3+rUFxu6/O2y+bfDPIWpxWO9SyVez2dQgKuHKpQQ
	 nhjDHXqWTmhGN7gb7LnbrRnqszbl4DiA+kVZlSuLwq0wBv2X6SMaRecPyE5Byu/M+g
	 9S/jzd9CuKjvF03M6LbRA8ylQxNZNDTId5DCQ+1lc9nsWO1RtyVB5yxwzTCluXfEJr
	 0NHxFw2+5qRrJvrkNTowCX1mfq7KlmFMTnQUHqu3JC0wInCg4CT6PmZWDKS2FhWC0m
	 9BUqvEtM1CnHA0xP5Ka3q++v15bAU/m1zY9fnkMM5DCYtECgDZNapsKUF1QDX4otc8
	 yaSyvCdFoA8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A8104891E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223409357.8819.12192724297624406996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158e77701ad6a611f63cf8859f818a899006503d88c357a4386bf7f158685efa
Date: Fri, 27 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772234093
