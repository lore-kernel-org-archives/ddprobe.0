Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6F277111
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753456794; cv=none; b=Bk0W6Q/pxfOTotRjoj4DYpk0bn227hdcSI+RRq9pvPe/Oi0QPfOWs6VdSAPOIlC8aUMNPfbudoLKfCntwPJ7rNdl9D9SxTJwkQCh3VuwlPjXiCfC3ubUUozBDQ18qv7n/N1js7mQcP6TUcF8rAsd/mRzX3meAL5IpwvkHdvRmUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753456794; c=relaxed/simple;
	bh=+Mf48c1Fsxt51Jkne7jOArAKKB1vtpNIPWfwIi5+F9c=;
	h=To:Subject:From:Message-Id:Date; b=o/wTRgi+If0eluPgI22jplnhU2OBjV6hbrlquPq2ck2XZyy8+CiECTVQQMDKd6msi96IBUEYLgNacebuc7K/pVbnIID4PxlV4PFv0xKfNyt2qPjKKI+SQZ+tut5ql6sikSX7fokOIGMIPQCtUcEsU6ccMCK0+FNaYlJS0uhGPPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqYvJQ5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqYvJQ5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753456793;
	bh=+Mf48c1Fsxt51Jkne7jOArAKKB1vtpNIPWfwIi5+F9c=;
	h=To:Subject:From:Date:From;
	b=OqYvJQ5GekN0CzSH6QWmOF6VsCyPRAcLJRn0SOi2EKDt10DRwLI45Oppmix2w1CZ9
	 GXJcOTvLVYZja/3sWe3jSGasG3TPGEWssbbdXr/K1RlwTmQYNhtnECgdaHI4uTOhN+
	 6NpbrduI3t+ws9suIfAUmwr0JEByIwKeXj0J6l5OM6PbYxjAlUUaTFpuWTNp0LEzbf
	 9//Fgf6waxYpiCHSglQYjCu0ORUwjXg3p8FHLEvCZ0vDUWuNBundagjOCV8m/+7Cf9
	 yekxMP0YxOgG/YQqUutC5WhlXtdghJcS+i3MougZ2FyIR1wADeMBbuiZhI4Fs5t9yr
	 ynPowyK6t0+Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DBC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345679357.9773.16477032650815551629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8918dfa8f28c3a5d3ffedee1e0168c483a13bc3c12d86941d72bf6c305d27449
Date: Fri, 25 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753456793
