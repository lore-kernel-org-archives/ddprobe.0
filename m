Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F7E22D7B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766439834; cv=none; b=fuA1BEE9tMbskOoDRcTdQVPexEwSXuOqh4SDRR7kijsb43aXogg3VCNh6/zPJSet4cW+LUqjttg74VPFHAhh8ozomDooFPOEduLveo3YxsTO7cPAYePz7kMdFo3fFhEZukYAepuS4h8JY3KO91wKryMEHnxOxwI6+djGiCvixEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766439834; c=relaxed/simple;
	bh=LCaUBxqyjUmCtuNufhuZRxvfrHpM9SKVlnHkhV9wtXA=;
	h=To:Subject:From:Message-Id:Date; b=oJukuvxVhCx3K5E6ermjYHw/MTgy/GJ4AX2QalEjAExaQbAlfg9cwXdnbWtAB36rODrBzVgcyQvIuObhkv99e0JQ6gzj2JunxAivTFpTVY2J/dJKVunJmfXGKGkMzsXykGUODN7ZU2D+tnOmbDs+mro34txvePRlb+9H8Cklb94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFsWzwDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFsWzwDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25EAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766439833;
	bh=LCaUBxqyjUmCtuNufhuZRxvfrHpM9SKVlnHkhV9wtXA=;
	h=To:Subject:From:Date:From;
	b=oFsWzwDUZUrTie7jMx8RqoOcBu5crCzHJbIKhLc1ub9ZZMQMvdf7J50XeRxCsidlD
	 R/JrvVoniDaXQFfcuJ0LA+I+1Xm2UpMmtsaJ88AH2GnqKgVWy1VVfrf1dUh7MaBwZn
	 zrkpOuKniJECtq5Yb3D6dNIbN5/rlNErQIRYcH+J1JG55NIOKOKfr2Ew6i7Om2AOtV
	 trh4lDPZshOMHxKa8COH5iwrDt+W5zFBdl4v+M3WzW+6d8HXuOsuI7Lc34mjoUzdbC
	 JnNS2GRwXFNOj2E9hqqFk6ce9qJDYmktDImtCEWzAhO6HugoYcbAfmrPw0B0FcAeLX
	 xVwRWy7C7r1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E2E6B25B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643983358.25664.5472727227143636757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7b2e11f0a36977b87189281cf41fa739217346c5e77e0c39ac323f8bb5e49a
Date: Mon, 22 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766439833
