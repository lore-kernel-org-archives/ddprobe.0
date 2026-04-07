Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0CC1E531
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775522734; cv=none; b=JnqIzBUddH3I+kjYehDnStTnxI+AhnHhahcxvqalthicNg9wBMLGvAp7Tm+svMsAiRaud0XdNAmViJ5wK0iTrKNHkvpriOG9jGEfGbDtI92sfbqnWQHFT0eMSRGIuCv1VVxt1vm0sAfJM00WTiChsMXJguAXO/MPYB8mMLjDKTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775522734; c=relaxed/simple;
	bh=/uY3Imqmk67WjFZ+Ddrs7WcLA9LYqprQdNh1n6QC8bU=;
	h=To:Subject:From:Message-Id:Date; b=YyryGKKOAlP3/p4YIz/aoE/xr+HgWl1tEIyX/RcG+7j10Mh7Ox4No8XQu4KLHaGDUtOzkzpP5cjyiSKIzvYz+OkCOKX31Vh2+afgX+VlLvKA5g/IFhbfY+yJlIgmPSQ51vSBGjVf4r1zSmcDr2Dc21i1mHX9cK6GQ7tLmofy84w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlGNDZfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlGNDZfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9210C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775522733;
	bh=/uY3Imqmk67WjFZ+Ddrs7WcLA9LYqprQdNh1n6QC8bU=;
	h=To:Subject:From:Date:From;
	b=qlGNDZfmdtq/NtNBsEuSFfBf3PYI5Y/m+MA3FXgK5ePDBbJ1ZHPa0tQShhaSgcR+E
	 mzshjNmRzcburBjhDr0guIue61ivEqXA6lCE3X31Bm0xi6RSGEH9JkxRBzlf3ZzVrI
	 y19OF3dUHn9PFp6nlkonbESu+idpfkf8h58r/dUdF3aiMKWomkVikk3UuZdoIB9jV/
	 eqv23xB02EaD9DaZpqCvtNSA0OtH9vPzN4XFXrWynxNNK8EHQpKyXoJyE/fbDboLF8
	 oQ3R9Yu127QfwGAWrEIYNJf7aNkTVkbVGm2Oz2QY+cXib8WeAYAyvvmbqUy/w6E9P2
	 n0sJopjQAuEzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48FCFB5178
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552273372.12948.5727845746168830281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc444b99d53598174b187ed8c1192524536deccf9b3b8168b3633c0b8013239
Date: Tue, 07 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775522733
