Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2A81DC9B1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749458394; cv=none; b=PJ1xIAuEqislWI6VZhhzEvdMLwbA22pTx/GsxqwgqwEl1V5v+toIrbquMIT9gCRitoRsbUJ0dXmzJCMuj6rQ+FjFYuwM9vF5IHQj39PvYGrCQaD82TxP5jvY8Ek/JBq/1qD4mb8VT6gpDBWxWCOUecIFye4wDAwJ1cmrUz3yij0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749458394; c=relaxed/simple;
	bh=fWwJ3jKlMLP6i+hslOlhNfx4rEKFjErX9gxSF/z2AHY=;
	h=To:Subject:From:Message-Id:Date; b=Qy7vuX5I0KAXFS1FSGZWbRRTmadgu5UWSRaHkp0w0GSLHSxF4IlafqgD1JL3zcjzuOzSy8Eaf6aI0NSWciGM6Qyf3XsnFyHyOab66Qo7PNO+uS7g1xOv77cQ8ljyzOB+2ayUJhiAGvQGvEDpj2nUrAlZv7pJdQ5Z9FzDABMwk7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jf76uMWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jf76uMWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F7C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749458393;
	bh=fWwJ3jKlMLP6i+hslOlhNfx4rEKFjErX9gxSF/z2AHY=;
	h=To:Subject:From:Date:From;
	b=jf76uMWpX0sjyBl09GKJIgKR5N0QQn4yG4xEGR1qu84abeDppaBlS4n0y2cmxUvkG
	 00kOUf7aKsE33pjVJ64Z2lxq1JEIGWrq3mjwzosJkHcL/nu/Y9qQom6iS8Go6t/BO+
	 x+jDrWhMGRMfjTQ9Avi50nQN9+mua19VHajEA+lVT7NhuQz/bTe37p6/SndUZaQVf6
	 PyrNkmbL1CNS+bQ9HNXcYaq6RLpb16Q64GsmV9yHB/C2M+iE/pW+8XjKjr+dKHYlc1
	 SZ2eB+LciqaAZsh215Tltz4zFR2l+vgUUvpanSB4JyJ9X+kls/T+0wg2cT4T1ex+D2
	 7OcHvL0PzaVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE23C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945839357.8459.16556145566575348377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2196ca1825e7cfaef89cc35328b446e8617cd20c500973cb0d727d22b53b60c9
Date: Mon, 09 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749458393
