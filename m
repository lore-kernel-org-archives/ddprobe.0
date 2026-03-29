Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C79740DFDF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774768494; cv=none; b=M5Q5UfAu2cJseOvpRfnK1pXtOkqYmrzYeDqlW3FcDF5vFWV5gUuQ2bZQrtybU/nZ4gidZ4nE5MpaZx4q194+k7hJKXg1qtAD9ojD2dAaF35syLqkW0V0tu07TuRiNK/Kven/N1/b271BQ8oTA7BmNpug/rkRXA6O79B+ZXq9Kf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774768494; c=relaxed/simple;
	bh=M0Jx6QOkuK8b5/VbEplZAgqXWXNumdogHyI8j/DVLjA=;
	h=To:Subject:From:Message-Id:Date; b=o37Y5IMmd1fVuPUXCkP8Osy6FGH3P2/C9nAKo0f5aA+FM4QTGFLpZ520T9d2xQLejJAgJaY2L8zLCvuLqMtjTPGXRhLU8JELDhIfv2KojqYTMVZEqBgTMKgCcj5GHrHEVU4zfMnpIib3Cfyd84EnuaxAEULrj17itgjz5HnoXGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6vIEfLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6vIEfLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A44C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774768493;
	bh=M0Jx6QOkuK8b5/VbEplZAgqXWXNumdogHyI8j/DVLjA=;
	h=To:Subject:From:Date:From;
	b=Z6vIEfLm36yj0PURx2LDqKuuj/8ZoIHygQsu7lb01K2RHGp+DJsUHYZ+DK4GCMjvB
	 A8ycPc8U7ZvYjYRVtDiqFgA956RfvOgwhs5WikZD0jeA4DtyW0+QbOsrxXdz7d/dUw
	 gzKmHPFmQQlKsE3lCHzuI6BErbLY1mQiVLAEPi8pslsQWjqZV9rX3zzF3yADSTX0M7
	 YtifiImSEIGSilXaf69+Kcd8uqiDFoZPHwid6EOCNIptaCKyaLEwVAkpSNfNxYLNWD
	 RUMASFjZgOoSrXLlkmObiyDy5yIPutkM33Eh/k6a2/hTgTRxHLdT75XrGcM17636nb
	 ygR4R9AOFFPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96071F3D5F5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476849358.14960.14921375045535744141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99c5ad9d40b586ffde209f3c492edfeb2389196405126ce1dc8fbae6bb8ebe9
Date: Sun, 29 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774768493
