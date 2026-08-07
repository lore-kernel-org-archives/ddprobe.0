Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFCB13B58C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786071634; cv=none; b=SDIV7b7mQGvb4wBfO0yk3tC8Yv3OSfaXmb2CWPauOTiJqoO5B5cYqD/eGXqgJqMXA+sepPRPXfXjm9PBt7Oq2Tv9jJubeAqOrbkGIgrGmsCTjSh3dciXu5hyyyFDA0GKqCC+O/sTW/eLqEudPFv7sasyK1nS673A+khQ9AeCWuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786071634; c=relaxed/simple;
	bh=sqRl1NPgOMpJ1Txh/H4SjjRF/1NtCmFTudWOkrYjQnE=;
	h=To:Subject:From:Message-Id:Date; b=qfTO7QXEGbAj3+rzl5FIYZm/EtgcQUuChixA3TmqAdWMBLDb5EkefHvb4XsXYRqvWHltljStJBxpdsl4S8SoBZ/zn0R6PgHCEun7Wj/bHuQjacamSuy9SuRV2mk6Ri+GctKAw4ss2yB7mcTjhaQJN3jrBrNZSOjOoXCWH7RSASY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upqGDIsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upqGDIsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BD4C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786071633;
	bh=sqRl1NPgOMpJ1Txh/H4SjjRF/1NtCmFTudWOkrYjQnE=;
	h=To:Subject:From:Date:From;
	b=upqGDIsrwW7zM2cgg/uuID5yOKVF/qobZAwQ9OJqnmf3sJkVSVIClcL72Je5lXZan
	 UY3fyn2Pl6x9pTkvvaB+ZuQJqHCAnS+LtmHE1IU2HNEF21f4PK6Q0jSi5hcHVzSyGa
	 +0EwEgDT4vKFYCCmTz0SjvgWEZVqfVpF6x5EDe+QyHU/fiJaemU9+xEg8LwkVcWPhh
	 JTbEeBWNGG4xSsvoPLiz2zuYc94Zuca1//2VJsdIa/QG/UDKcOaCaDEbP7LniKuld4
	 TYCq8/iyKU+WcRS2iu8hpT2NU9k0JlOLxATlfqW2nCqouzUbje/eISTfQIQMyg3pCb
	 1S7E2bHiRJCEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D8BC5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607163368.15172.2329433909497920846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a16668ceef9b45d88de5188a9eeef66a062250a52349a7bc98ace0596654593
Date: Fri, 07 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786071633
