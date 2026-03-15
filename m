Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC00125A0
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773533694; cv=none; b=AOwfnKyYc9LMQFIDgCQ13fGZVWJ/p4D192dspXSJF9PyCeQtyM2zAT6JbQ3+hIeeDL8PWevvbvyG8CXsS9JcwtjDjJkFbzVpqBjrvPXmSpLvwHpaeNpHPuiHwijdkBcF31Gg9oxI3jXJd9e56USrYU1GmH1UchCm3RfaXSI8z6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773533694; c=relaxed/simple;
	bh=ruVClT3ZXZ+48jQYi5q7/f0xtuqZ9iFDeSS0jZReiDM=;
	h=To:Subject:From:Message-Id:Date; b=XXCaIhdbrhvDHkGYKJ3DvCmt2b7Jatjzc/gVurzxSIgYKYijY+y0/bStl9ZN1dad+qKDBKgqy4I9tJiyasG7E6rDUDGagTsSufrM49MiFOaAZBiKZ5nN6BXmuimVgSx6KK+UiIzO59c4gVdf+AnZH3LtvayTAb3/7JiWwJi0h54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOQT0Auu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOQT0Auu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AB7C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773533693;
	bh=ruVClT3ZXZ+48jQYi5q7/f0xtuqZ9iFDeSS0jZReiDM=;
	h=To:Subject:From:Date:From;
	b=HOQT0AuuGSIzg7JwX3c5tJARXhWMm8XgZVQAi2J2qTEbhEplFzC4k0CkUo2Pf5WyC
	 VdVXU+gYv8JMfM5NySt6W4u+C05pSMYy5YRCtCR7YdyqUIcnC45iKgQwLUk/Qo7heu
	 u1Ke0YoItP3J/UvL9FvzoQzKlUNFKqgM4ZHaCSAN3V9ZAvlXOwPRXQEbylkzWq1Pjs
	 LvlHAdszyiXpslHT/NI2/Qp9Iwt8FwWBaM782FXgh+rU04IaJltJCbQpxWBLX7s9HM
	 dUrTrj2jDnGm5/8sb7cd3WuaPeslyj4Yn3XSUuTfsT4SVh3kpbGQR24zpqlmVIcBAf
	 62vrdc/zRgSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9730210854B4
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353369359.18012.13359189371799049835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c435216475d6e8d1b122ac71d0fcbbd610d0bfe52fb18cf16370355c042d767
Date: Sun, 15 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773533693
