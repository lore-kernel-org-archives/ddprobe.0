Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276B217A305
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775794054; cv=none; b=Ui5GpFXGt/sifFnMO90XJtEVh1vX1+7juh5SMIP1iCsaxxXCwIFLg7zdmQ8KX570GClArI/9TebpelTlYOLy3tc0NDO2amKySVN+hebCOVU1KNCK/iU0ulUa9p22QoNuy/37XuDc+RJ/AuVI3YvTXsIOZXkCQ/JQ/K8QcwoBzFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775794054; c=relaxed/simple;
	bh=q1sT+afdB3/sYG0AORQ3AiDFlZuKVc+g4HYaJSvR0WQ=;
	h=To:Subject:From:Message-Id:Date; b=fD8ShcxK3LFl/i/ZhljMvvVUpaQesHiVKlmtx4dLCPIPsDLY+2zsCVXdAFOY4rcgU3j3AMZxMXUKAOHDeBSC6wz+I3KqFTPB0n9ezC4WadocTAG7fRfAJaXIV3it+fb56ulnKAi1vMO4Io7iqvTNy++S+XzNc0Eeaysg6D5uel4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRX5wW/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRX5wW/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3325C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775794053;
	bh=q1sT+afdB3/sYG0AORQ3AiDFlZuKVc+g4HYaJSvR0WQ=;
	h=To:Subject:From:Date:From;
	b=rRX5wW/sOS+NIvSzkgmpzeh+dFB+6H6cq0k/q2so3LuwSPbfhpA3c7NVrwO43SJPu
	 5mE9kIRhDn5Sg++5fK2XUQcRyPDfU+SMRxuEJjOCrvbvb9qDToiI7Prp1Zt1GwHUW2
	 g/vdQF5XuAuqxzbw8K13UcpEUvQpwMr8F5Nbbjb1EpBmR1VEn7QUKp+Z7UdLyKoDFU
	 Le6S8Ru23zN+On0YKGdZGQGFPo9owl0TMNDOdO0FkmdIYdc+A1Z+uRmm14c89Iww1L
	 2KQT+kV8yojIBztkXUdukohisrQLNcnqeMdd4TuT83S/tV+TjDfk6dEB6dkiLjNufR
	 EnpY8ng5G9DUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3C3F36BA9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579405370.20624.7402561924595126285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a040288e2d95455bfe210a478b79e88708727ddeb1b99a691919d47584d81e43
Date: Fri, 10 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775794053
