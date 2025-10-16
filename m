Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29011216E1B
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760590794; cv=none; b=pfPFB4nkVyW1+q0ale8K7Cu5xhXncykOJnVHYKtp5Pyc4dQyEM3LN6RFf74IjOzdSawhodDmVb7JUPHgJMFBAv38Sxahap+uS76zPf3zBckDysAyKLPKnsoGa7TwepewqGuIkQYXwje235Xm/QqqyvVUa1SULjZGjsc6ZBXhA2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760590794; c=relaxed/simple;
	bh=tTHXY7/aceLr+d5Go5z8x3ZvE3b+OmqB1Eoesn7dU8Q=;
	h=To:Subject:From:Message-Id:Date; b=CQo1FlmCT8pBh13z2ScMH3MOIoAxQtgfmJZ42a14Lug+R7sqqtiK5IdfXxaFD7s5Y7NG3RDSKa4lJn3ve0AujQX3Yc5KhcEtL/vAygu38gWCGUeWLPsfR9aq3o7cLOPOgsx/7lUlBA8TOuzBZPp1ZCvir5R5vLcdPK3xwTyqy4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwU0yUFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwU0yUFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D35C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760590793;
	bh=tTHXY7/aceLr+d5Go5z8x3ZvE3b+OmqB1Eoesn7dU8Q=;
	h=To:Subject:From:Date:From;
	b=GwU0yUFTX0XGit7gnh34jfktepnYB9STnHoch/JxMuMZ73Vl6C7YAJBJycKsB8uKR
	 VGGgNmIWSqtz+fk2QZhRUD1YhrMhIbeO1vobPk5OtroqXa5QIM7VsYLTEApmX1L4MS
	 8jrmJGipVat6hOJ8lAMs6y2nbNisPlLxJLj3dzhxvdxlu3ujfnb03JPYpkkoSQGDzc
	 njrHIcInkdv6v28dw7bb+zROx17jPhN9p9TipFOlNvqRoBK76rGPghgJNNhOsytKnX
	 /3cYd2b6oCNhJ81TiZKnDgD3N4l6gPzH/Al1fXMJ8FgnhdVUzLMwvfDJCOatHgh/2Z
	 6E2H+nTA6b9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA8CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059079357.30564.4278916569300044673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997c3923c3f04f7a74a425d967a0760b7462ffc98ac07a75502f8f37c3a26929
Date: Thu, 16 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760590793
