Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445CC242918
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741788534; cv=none; b=kaS1tVZ6XBO76azWCU6Br97HQh7Zq+ES+lwUH8JxToxGz4gPgA2GC0wqMSUkdv5dZJJf46ag2DLKU/PNojIYQjB1OBb2WUuaB9b/8yLHMt0SdWHg8P/ws8D8FkSc71eFr40fkDHjtzhho0GhmWQb3etkjPV03uI0PIA/3+zho3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741788534; c=relaxed/simple;
	bh=dSKP3odgDXc+fKW2nO+/7wG62CyxIU+zACBFTJd8wq8=;
	h=To:Subject:From:Message-Id:Date; b=lbURkBho1moKnF3buYmfi8y4z+c8CuBRBq7IoNuuSXQUN2l6z6CESFun6AaCiS3hXMOwZRy3mp4Uls7Og3GPOhYD2g3wHfIAYzdEhgMwSBmxBoLY1LN2nvlm/vSj0jgNogg+5cxJ/xhijAJJ/BTrS3lCdoaEhX1M9ELhX4X9F3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/OUP3HJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/OUP3HJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B319BC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741788533;
	bh=dSKP3odgDXc+fKW2nO+/7wG62CyxIU+zACBFTJd8wq8=;
	h=To:Subject:From:Date:From;
	b=C/OUP3HJJgO+oujiQ88g9OfPAciIXItBjSBHUXXMyIEhSWJCsFRLzymCs+mHHb1HH
	 l0IZnd+E+/xnhZHxtD02ICpg8nx4IZIAaUYUdU8vRfbIxpO8JpFzrlRU/swHDGOmuG
	 q7dCNyVR/X5dNVScwStCA1CH/6t9ID1qYakDEM+xaGTKRpkH+Y0OHN/+qQKfN2wXz3
	 1ULmp7F/BrCfwFO0qIo6S+jm+GQkSiVg2sbH2x3PtRxoMvj1w3lJh+NQGmtichkHdo
	 yUIbAO3GJ2Q+PH6Hor7n2Sst3HQubekEgMfHOx3dEXs7kzHlalV6q/LkNze859ISh/
	 zFLP/YoPsy9NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C6CC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178853361.5716.8547464290803470742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03a606b4fd71393129d08e892dd6dae67d7e05fd22b621f570a0164a2408cdd
Date: Wed, 12 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741788533
