Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6C133A00C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789328434; cv=none; b=CcTU7+T3Kovi/m1CdAsGJQtI+nWIaJmLYttmMsZJWEGRLSVlA+UYZayKk2QmP+G4IL2AbVNr/Z14mV0NyR6WevGfdvAFFo3/xg5sA4ibk/WIneLD/qj5utLEZSXTbsW4GPhTrk/BGApop6OyhN+rOiaMDlEd7DB0z2ELlFxxgMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789328434; c=relaxed/simple;
	bh=LDzF6TExScVlG/+AVARC2sEgJTZzxfEsmM+j61prruE=;
	h=To:Subject:From:Message-Id:Date; b=FrdmCIi4JpRvIce4CQfvQNxsc2O+ajmWiskAQ74yR9Fs2vbZ3SHJa41BbpMMfOUXBs0vHw+xUNimSrhaBZAprVkl96B2gyp1jP/q/XbQmmGxpSxkvcDh7PyNgr9VGjXiPw9kpxPrMv4b8KkvMQDN6uyYcMs/iYDGUECWzluinGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jq6LFaWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jq6LFaWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A37C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789328433;
	bh=LDzF6TExScVlG/+AVARC2sEgJTZzxfEsmM+j61prruE=;
	h=To:Subject:From:Date:From;
	b=Jq6LFaWkb5b/vtCuKFIr7HCuuOiLYTSsPj4aDgsSq+TiRBQMQY2yL+Y0G4mVj8guc
	 wQq0Uc1+dH5j2cEKp3rfIi1TSUaETVDmJ0aTvqArs0OlSmDbpytC7ZeiATHr24euQu
	 VTE8lw+MRYITA0CIjdg5rL6P+oTFnGhTyVrtKawarAZxA3LuzJNjRpKKKv2PY5e5Db
	 GKbmyb0eFGqXuhfFS5nxSjaPFwIWru1LuALREd7scZqcLmsbCwMou3J7+3ZiEWnRvf
	 CdzDnszJw6vvDyNanNKqWCKW3X6zmkx4lUQVg2qREMpDhLpxTFPzhFK7f3Dv4QuVd7
	 86uWq5GfK5SdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE107C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932843374.5031.2044778583108145283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8749fa7640855bbd327e616cbb2b3ad160434a32ee3b7d39e60d7da135aeb7
Date: Sun, 13 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789328433
