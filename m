Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108B8494
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729923354; cv=none; b=XyZiviBHR9WH9B1e+XyH3Ns7ev7B54JrHJGN+1mWdXDslR1KW7D/P36u0aghMJgs2BAJ0qSDbXAxNO8VJ2yyK9Lsnq+44iKUugJ4k3Qr9snlD7ynTC9jeV2ynlrENAkrvzwQIPEVaJiWIyRqNiQM+ILAzpNd0pB7jk3+WuJstlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729923354; c=relaxed/simple;
	bh=iLBQSJjXahDlc5Cz/TlY9LnZkdLnVPOZKymTiWlZjxs=;
	h=To:Subject:From:Message-Id:Date; b=oHnvJMVItGODZnC2N4oUiHTLBsQcr/O96DJKW1fsA7WF/psvwuDsLR8f/0LKti1Jva/Cx/WvvXXrku2V6cfhNYcyw80aDN/j6VJNAgcyZqc2+Sin/HOHlRE91jvaotw2BxaCKt21F7dkq8CoYfTqvvuJ7A0d6b0xOcfRSPPrDdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6xOeuU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6xOeuU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA4FC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729923353;
	bh=iLBQSJjXahDlc5Cz/TlY9LnZkdLnVPOZKymTiWlZjxs=;
	h=To:Subject:From:Date:From;
	b=E6xOeuU3t/eWMoS0z2EIXX5G5A+CDjK5fpgnX47QjZdoch0JgpwaUwXldgGvfQmKv
	 0kHSAtvWYoXnOm/MpELEuh0himLEvley1xEIAYKp97NLCrC8xm9NTGvWgOkBoOfJLo
	 9Z20N+UHTlFim6YD+A60HC9Zw+PkUMNN7k564erHeZS8531spxa6HU+xAJZmzbG0uZ
	 c4bILNAouPDNe2VaAUDBTyDyq2X3rt395PaVgQheJFeAeRMfFzjvdllge3c/EAXA3e
	 lXd7PhmaU6Fah9WBcJs4xxa4+krNBr9/O1C3wP4lkTLRLGA8waIkapzyTwyUDuRAfr
	 Hwj4B5lHaUwDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9793DD10BE3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172992335360.23168.2666137214813298826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d38c4dd77da616494145c856219d9dd7c18b626bdc890cd00c199d7146a392d
Date: Sat, 26 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729923353
