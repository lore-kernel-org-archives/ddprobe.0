Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207FA350A3F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771524294; cv=none; b=AP5DGvqve0bHGjXc5dLvKWjWZb042HfYITt9PQ1nOc+pPIiOuYw/7H1t1syc9Tj/BJEdPlnjG6wMkpCPgXBy7ikgy0lSFr00qi3yH4mOsvE3PegXt/9zUU2JZ0QLCclSDfz5WCoR6vFA/6Fl6I93fdU0Y2aghl6LEc6AE2s6iNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771524294; c=relaxed/simple;
	bh=ZiuYBee4BEjRGTbGv+MlH+pr1WXGRGkl6B7fRZaHRdA=;
	h=To:Subject:From:Message-Id:Date; b=TbESpune2nZSciVFExC7SAXbVYyKyrnAHqTS4cwxE6hoLwmLPQ1/YLndWf+8+heBvnREVH4h9pPCwanHYHd+s/33CXUy8lWBJg/fxSE9qKERiMvODgIU6y6TOZv/WH1TAD1VFHHoih4vrqiIB1hqKMdAKWNAqBAxJCLz/ipfKfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnhbN8W2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnhbN8W2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08AFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771524293;
	bh=ZiuYBee4BEjRGTbGv+MlH+pr1WXGRGkl6B7fRZaHRdA=;
	h=To:Subject:From:Date:From;
	b=QnhbN8W2cTKq7YT7dwCMaVcXFntRe06CaKcsfsXBcKwY8lspjJbeprKeIzQwb2WmD
	 1nJN8JBY0zpeanuquM0zisZ90SH6xDIGSOUbuCYrmzJYeQrBJ9YLeSmKhc2OiU4ggl
	 Plgzu8RPESkPBLECAYUiP90BPMWsaVwEJm3AJgpEvG6HyAMP/0S4G5UqwLV1UWkDmr
	 P5bWutZJKjJ4L309tpUY1aKEUkdTBn1EQbhoCg0DkFjYobGT3JWnhy6VhWoXYJRlsq
	 gSXRWqExOx6DTeRXfRUIoJGKVCPHCqGSJvnqfpMrFvS9gUDt0DsPr+MxFf4cJd3V3s
	 co3eiH0sMLKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BDAE9A053
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152429360.11679.319152267032002795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9477437cb59b327b6ea26e493ef3032a48a960245f93b3464ad6a30c7c44a8b6
Date: Thu, 19 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771524293
