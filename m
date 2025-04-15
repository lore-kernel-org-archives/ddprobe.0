Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAC5254873
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744748994; cv=none; b=J8Y4mTW6ZBs5BcoDVTvZfGN0pnSDGknewCCz0J6R2j5Fu6jnhlNfaRzq1CrTdfq7hMrxwxPOj3vVU+J8u7CGUNdmegONUP0GEBVlUfUNolqeSM23pyD++OORWCw7Pf10Jx+3POmqF5mh2giJFK5la6UkmbcTv96vWt9rpUaP2OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744748994; c=relaxed/simple;
	bh=di5QXY+c3Vqy974imRpfUOdLdsy87rQhEXDdc5lIjjo=;
	h=To:Subject:From:Message-Id:Date; b=Crb7CSFRRRkFZ2PUCxzNo33xaZqidpT05cWl/8/Tx32ua3C82Az+EDzxEAdReV1ODg5ufBv7Dy8+g3Ve3gNJxPeswKdjrV3sIBAgEzpUuGlH1UCS/eJVxZGnXAXSoQS/k3XM+883XqxCSwRkIPuDEs895l0PV23NLsKuED2GHUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5ChvN1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5ChvN1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91E5C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744748993;
	bh=di5QXY+c3Vqy974imRpfUOdLdsy87rQhEXDdc5lIjjo=;
	h=To:Subject:From:Date:From;
	b=O5ChvN1As/p5r/QyU16+PnAScKs7Vq8jJU+nm2FJLzgmWvXQfkycMMltImoVT7LjG
	 w+KBYUe7ETqfNjU3JHI8OBx2JBQR7u4NIUgmwzHB1jMdqwmXEy+kBoaORlAlUcgYYT
	 Qn/mlhLX8rWTp0Zzl7Q6Zo6Lfgbtj0hy2M2brr3OK6Jb9Qpd8bMN1ag1Q//yAACTrV
	 va+1rbEkJKXUoyNqA1RIp+zNy9EXHQXaqh9ukd2tAkQz9hBbSxWvv36MvrQf9KmF97
	 O9dVeGwhcGDlDOY1m+J4DFfkQ/tSi9JLLketNWQ9LVghoR3WK6+b2OM1NUjDt/w1R9
	 Vyqfq/fhTKC/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F8C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474899360.15167.17127154808072967344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9fae84fd9a305d8e82a00db47ce6e58c5dfb7e99e70ec359b70015737ce3fa
Date: Tue, 15 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744748993
