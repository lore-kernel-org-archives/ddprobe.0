Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A47F282F5
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748237994; cv=none; b=jWd6A/nO60kHXA19vrpqJ9ilps7B2AoTRdDytBBZWaHDCNJ2ohktZc8Ha+amgyfLp0/Lq+74qRf6r87Kl9cmQtseqVdU9g8LlZcJYAIcqF11zAn8ZsVclpSX1ym8v8sUC/L9weJhzMe1m9yAywRCaKb7IJ20jQwS3XnNHCaHpDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748237994; c=relaxed/simple;
	bh=fXsGNVqLD6W1465jZDhzTRkOOO/SQSxonDV3eZtaeU4=;
	h=To:Subject:From:Message-Id:Date; b=hC5cl6yMfxmfAK6i1b/3GWy+hKp8T67IWjKSrv3Fqn2eUhWDE3MPXhfoLu3ewYMeBbdTyRLndIyEmFFPG+Y3zttqxmKc6R9HboS9xgN//GF0R5KIoOob8Uh7Srk5dgTGjkEm6dbI9B2X2dXVKOG24ZtyqpwyRwfeNqoMogRA6LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0u9i34L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0u9i34L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4BAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748237993;
	bh=fXsGNVqLD6W1465jZDhzTRkOOO/SQSxonDV3eZtaeU4=;
	h=To:Subject:From:Date:From;
	b=M0u9i34LMWJFo3y63mVxUVM9QPMRskr6jlLnsAgMowHCzDfMyRpFuuFodVDGXiqi4
	 ltSyDalgHt1e/YhLFrX0Vdxgj9xiKE5trLburdZryyMirx9PJp9lPpsS/qsikeoEM5
	 h0MnaX/tI+1C2MR/r+El8Y9FjpwJ2VVA6zMVUVKR6JOAFQhETAaD5//g6kpQ2w6Lh9
	 O9GvrUCTcUT0H99hd2su+2W5TjvsSYnOVweFTKpgj8A1mVbtSAzy/4sEG8lgDkXqUn
	 xWcbwQqckkMI0PDfj7Bb/VjSx/9bPmZSyAjHe49YWygXDoNjsJod/80TxdMsKu4ZXx
	 DmnkDlW2bdZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D4C54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823799357.8797.13474105575772946234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f107ac531f6881826cb391e0f039f926b39c7fcc8df5978ba65927d43bb6ff
Date: Mon, 26 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748237993
