Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16233DB640
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844494; cv=none; b=staFZSEtV5wa/+go2McZjQSPfK8r9L1iyh3N1Q3+BsTvWPfesvCAfJrJjyIWVQFASkz2OX7Oz73R7LjrCL3JhfG2tpA+iyFjOPvqTTswUygXDCkSwevvINjJvBAYDWNL+P+X33RBUbx3kaGsIgpns5/0V1ReQgLm8X6Gl+0AElY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844494; c=relaxed/simple;
	bh=4lnBwIzGqe1yDxRUhmNC/g1XKUqT0y1+cVwP6lgYSW4=;
	h=To:Subject:From:Message-Id:Date; b=D0XyXrYLpCYzCrzDl84n2o21zrwXUZb/JOsd+gMf6I+ps3HPPf3nUKDLR8v3T75ZwTmP+tuFNEFmA3j78tWbmR0KriULpFkL0VYbj38o6o21FwUd0ADvaxb7scn4Zqh3fH3Cv9NcYq79sHj/dhSIHTZCsvzJfIZWDoMmZxFRCY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJOPo/aF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJOPo/aF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F20CC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773844493;
	bh=4lnBwIzGqe1yDxRUhmNC/g1XKUqT0y1+cVwP6lgYSW4=;
	h=To:Subject:From:Date:From;
	b=TJOPo/aFePAzBT2VSP9Z3CWFRDPoOZSUNRik4fK2SvdiHNUNTHAxKov4N4zQec1ff
	 WRoIE5eg+1/VitIPzT2yHAzFP8RUkIWOe7euyNbszv5Vw6V4aEqM1Mi0gWpniw7dIl
	 lprQDznIO/BpC7NawtTiKx9Qg1mceIW0Qta0NCTx/J15xHnKqCm5zbG4HI50UU5pC+
	 FDJvyuQQsNxRT+RZUs0JSYHb7YQ+DhKwH6lt0XaCqcmNMOeUHeiGOFGPz5Zpy9JWNa
	 65i9AdOVV4gMz2MOtRRRSophaIvv2hCAsvwO64b9YcF2lit5bnAOh+k22hN9Vr0E5K
	 EGqoWjOV+jgIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE75103E17A
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384449358.15204.6579598445852941470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10757a91dd1eee98a0a92d4413e87b64f86460e636464d425af38e937e2f2e0
Date: Wed, 18 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773844493
