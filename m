Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC03188733
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744682994; cv=none; b=RJBWR3bY86JDhnV753zIy2vqGMMK1d1NLca+vKE5E8vBEDVvI7F2GdCz/rkl7A/SueDWENZnfcQR4x1EcMdjBoJto4vCxYlCTCu67ZwMagbGZfKhe7L3chrMrTCtFEgx2WcCfOhadA8bmTuoLZGnBu8F9nlqrJgjOWWH76Q8n4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744682994; c=relaxed/simple;
	bh=yqqHv4COKRWwo58C5pMlI+BhMAnpwtzGgQWYTsGC3z0=;
	h=To:Subject:From:Message-Id:Date; b=KpMJESjiNCuor8qvrDWGmskL+oiMrKrV5rRdGEI9RKk4zrRdrhWLapPZCCWjZrvPICuGsrfkQGoXAyi1Y8AsrSXUntL5gEFRWlvLXmdPeILlmTvoLXz10zKiKyzlMb/eoL8749Fz5qm9+03PJX76iBPPErDbmMI/3eYIOlKcCwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diZgjk4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diZgjk4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A05C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744682993;
	bh=yqqHv4COKRWwo58C5pMlI+BhMAnpwtzGgQWYTsGC3z0=;
	h=To:Subject:From:Date:From;
	b=diZgjk4ORfYLIHig+0VbcmIarYNgV2AXu7taeVZ9fcA0acEfXg/MhNjU0bnLOjCx+
	 4we7wYnmAi0vcUDrngH+8OtGbCnLDOtaZN8Dfjx8T2Mcudqtt67eMLtC0iO5NM8u9j
	 GUPmP+OdAOdNrJ5R8sbvWoclirnHyp/IUu6R6jHuuXdj39pIGanYtWrFHdLvAu8czc
	 q1TJUnSvLOxJvtY1s3RUYyDUZcbGcPVLQJ7o8RQtW0eDxCS77g1Y/NaYjB71sY/ELc
	 qvj7UbFs5d6nerijYGIidvKIP48nRyxm7A4hwS1x4T1x/0TMpYNdA/hbgNVeW6wNvu
	 57Q0uThk3p/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958EAC369B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174468299359.14392.3593053317976025778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3efb591eb11576079e34f2f250083a8283818eaa599fa4877288417e5e67cc
Date: Tue, 15 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744682993
