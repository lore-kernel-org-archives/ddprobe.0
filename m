Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B95B629
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRpoFJpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE863C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696562228;
	bh=Shv2DC+7ykUTO4VyIFjqfSgi+cuQ14G7TNzNHusoG2M=;
	h=To:Subject:From:Date:From;
	b=qRpoFJpnMIM8KVEBr5ggeonra9MtIvweOZhz5/TvwrzIFlGp4a52/XHb33H77wRwi
	 oedGE/8u3CIusVTZxvGBUg4U7lhbjBGSlzdeWVXwXX3Fvz3lF3ZE7aLd4OJ/091uV8
	 dT0LHV/nV8RKd5As/w7TCnq/vcfoaKW8JHPGh2Sn7EWBNlGdLj8UQmUeYYN03sDRcM
	 mrrE0NxF7jn4qTTXKIv0tfjxhcaQ4bR6XQMZaROHaTqoAzjzfxvWgeUp6Oo45doC6B
	 350mAxPlaRlPpbvNFPVp5QfoWI4ggurs7EIoz0WiQN8ZFO4VfYm5VozmpdCN52daRp
	 p7Y70V9A7qQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6F4E92FDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169656222869.28024.4296677321280765637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a878edc9e8f783cc61681f5933e1d724f1d645cee48f6ba1f7426e9ca6e30b4
Date: Fri, 06 Oct 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696562228
