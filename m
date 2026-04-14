Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144AE1D5ABA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776175654; cv=none; b=Y6jhsJe1DKnWVpjytehDoFTjsCNvgat/r1aLPYLg1RE84lEwDZ9sJ2kxafo0nshtJZ0fRgJN1A37LFbDmRcbXeOG0OncHTQsgrgrpmJPS2oABNtnphojdjpHdyvqHQTsMpO9qDDca1Gsi60irZBlUBPPMEtZUJ+GpxtxTW2h7Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776175654; c=relaxed/simple;
	bh=Kox7d7I/akRioY9QyeqE1VHPzWZUJXK00sXXmtEsF8M=;
	h=To:Subject:From:Message-Id:Date; b=Ya0c4woEcPn+brjlRFTCF8KEQubmds1Pp4DKBPyfsySD0UIPIkBl7iLbMKimLOsicRL++jVAMJTxiL9GXPMjd2gGxp4G+n+TVJLNu/tSU4uBY9uaC6kOS+UpVFxhiwRyAkU46sndPkaDCxUNwbz6RWLjXmsl88Zpc1E9q5x2veY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKyHhJJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKyHhJJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAFFC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776175653;
	bh=Kox7d7I/akRioY9QyeqE1VHPzWZUJXK00sXXmtEsF8M=;
	h=To:Subject:From:Date:From;
	b=YKyHhJJFjUX5vHCWfnsFwafLggN33SNPaX4JTFXf3LF99/FKJwXR/LjL2cfnSjcJy
	 ezbgK/alaL5FUSEPH6iUtOGMuZOVReFATH+f2169/Eoj6RsIghQprI9X8pB6S9Gizr
	 B6Gprq0g0Fl+J8ExEWHk9wuCATL6AxWQd3H/lkDg0RlXCga81MpR3kMr7QCmhkjU9E
	 Vvoo7tXL9BD1r7ncgaEGtJuRVZgOaALbyacpx4q9xf0vD9VLEzSqfGE33+qwTEh8Aj
	 VlPJs1LZGMuKjNJAJm6ou1ViQpAwoG3CzkTEGCetD5t+lWd9AtKZ53vX+4YJqgpnNe
	 VBgpzhbBkY37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB3F9D0CD
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617565368.30541.6276250643443035481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ebbe47599188f36a7febe0f8966025a3f8755d5297728ca356b886ce4801fd
Date: Tue, 14 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776175653
