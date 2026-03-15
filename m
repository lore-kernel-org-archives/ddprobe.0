Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D68A14AD20
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773557694; cv=none; b=LpbmjThCOPPHddExRUcuHMvICGTFqvNu7YsE/x/ulBp8slHD+9J8qSryfy5aRjpgY5GOw1w8jlvrzpbEWLu10UxAaDXcNuiyBquKaA28wyZZL+TWoDKL52b7UW7Hl+QC6T0WNNiovLzJHd/Ic3AFfr1SQP7N2qXjFnM7vnhEmks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773557694; c=relaxed/simple;
	bh=zNd+WdeLGxEp2TMDfMd1Cqvk8xlTgXwRUpT9KfuK4pU=;
	h=To:Subject:From:Message-Id:Date; b=cVpDZQedhcbfRbOiqS9QkNf3m6VQAiq1htcWX8KXB7/9KSBNDcUbfBwhDiIrydi+EqwjTx/4xtp6xgNIRoNfE+49fS6rO3p5DEG3IyeeC2EDsbMpsArOecI5T5Jtjv0+YFS1XO/fSHJgot6m9KANhrSxatlioJM1xDqOsvpTkK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qukxBhrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qukxBhrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66C3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773557693;
	bh=zNd+WdeLGxEp2TMDfMd1Cqvk8xlTgXwRUpT9KfuK4pU=;
	h=To:Subject:From:Date:From;
	b=qukxBhrm8NQ8YpzVKiQMrBp8BKonxkRNc1PkB9ynY6MssIXmeOcT5+NycHlz+q60n
	 pOYtlUt6u0OHkZlSH8F2BdQh410vJVlD3iq22Hn5GnAf0/LGqZluPLCw3hprw4pMBK
	 t6TZysXUOzMRJQMorn2CFP+7DkRdwSAuNsKlq3Gv4QHSTU+raOd2ZD8Ro0+nyM9O9h
	 ChYaDcwRS/A8OXR8JkvULIogYvrncm0RJJQGLMBprAAgClseq13IfyDz2+JkKH618e
	 uuY2X21b8D6vwARJ5aLDZKMypSwbikk+Ijr1OuZuBfw29D4aPPWaW62H1vdIkTSf5G
	 iGP8nhtrAmT9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D8D58B0F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355769357.29876.12810264709418246593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6988a3d8741f5665453784179515bf0c9c6d183ef619b2dfda6cdf598a6884
Date: Sun, 15 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773557693
