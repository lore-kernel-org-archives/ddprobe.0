Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3671F948
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752128394; cv=none; b=HavFMMo5kYwTrrtGQ2vyWFAHkFVkh12xztkmCI/VCZ76ObUax8gNxkzJ+59cvJuHK3TgxtFJYqsDvJ0yHf91rPNXJgeCQ8JRlKrlnrmLq+duOkJMVLPJ9Y+GZBFWTcKzNhwG8e+Sks7pXkr/JMgNXlwXZVZV6/XdGDttEw2Nlsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752128394; c=relaxed/simple;
	bh=yuduWhfqEg3w4CPFDfPGcmL9ByMR0BhPB+3yYjscsq8=;
	h=To:Subject:From:Message-Id:Date; b=DjA4mlYtPnb+r44vqhTDZhdND4v9Jr8KIpsQteNfng9XhQygg5q6wEXBlPhgdLXMlwcYpn8vjGoPg7wtdN/BWE3waD2jn4XTXfAtph9DXOin34ka5zzyh1m+4vdJicqEis589i3t9AVnmkg9WjX0SgdiEScMqKyZ+f9HILhivyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw4K9jdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw4K9jdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A055CC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752128393;
	bh=yuduWhfqEg3w4CPFDfPGcmL9ByMR0BhPB+3yYjscsq8=;
	h=To:Subject:From:Date:From;
	b=Tw4K9jdKlszxw7XAFb8xvcOKGqUXPylz0sUFbQw0QBwUXlmQgivSUt+Rj8b5cH0oS
	 BuHPol5EDmjUjGopEtcmTi8TEKFkjypM9IPwAtp1bso4TocDz6rT8AUAHGTy4EAspl
	 h5SwQ7Vlp6dQ2k/TTfvYoqRZjWpxZPbAC3Yh+r4zulEpm4p3zf56Q436oBGec25UXJ
	 F7AqHmF7L+8WN2x23Qj+q6Vvyz73nukrhYw2zPGpV4m+aPD3JKZ94N6jriAsUe73dY
	 yPOz4IaSoapCg85pFZHzM7KWFpj/98mJO1svLnWBVnRe7GXNhONaiidXfwvQ7gBlUi
	 Q35l5n6ej5RCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E738C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212839357.7859.17852702218117236194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cc71265c4dd0e24e4d571781fcc63aa68a24b4a8f9f4cd7666d28c5a302797
Date: Thu, 10 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752128393
