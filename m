Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0A6264A7E
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477536; cv=none; b=i87AUVTVSqDbuhtIN6r74ThhDElzSMEjeo4710Tw1jlsZtgR7Hy/ePZMDbr4V+CGAzdlVd9D2YHmnKFH0e2oTbufT/1Efv39WfgZ8FfEoOCqWOT7OW8ETRmTKCoNv4jIyDAUqldDxoTF1f3TsojPnl+jZFqV+ooUKOD7lFZn9AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477536; c=relaxed/simple;
	bh=ue5D8TiDNiMEVEgW6nNiuB25htoOeTKkt/PdR7+R9bw=;
	h=To:Subject:From:Message-Id:Date; b=HnSBa/8teQarpOnwku5cUuTdu6L0bicZWDz2t4119zmfEz9CVxYT2dwm1rtk88RVRQ9ADb79zSqHKgoo+BSnZGGv5Qy/+i0Mq7S8VZI0fabr86Fqz1N7cjSWSYbeQPENiZZ13vIEu+ILgX7ZVxntH1eH3z2juRLY6/BhMtKbLSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR2r64l1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR2r64l1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B484FC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740477533;
	bh=ue5D8TiDNiMEVEgW6nNiuB25htoOeTKkt/PdR7+R9bw=;
	h=To:Subject:From:Date:From;
	b=SR2r64l19GseJWcea/R40+xremYCoEM6K+/Tyj8rQb9k50v1hUWBi/XHcstMtDWYS
	 5oM4wb73Icg1G2Ga8M41kAGSbu7qJSiodQE50yhzEZfDQyKbYHgry1IKUZAGYSQtVv
	 I2ZmFYd1JdjiWaB7Kp4tb7M6HVHmoBKwJwIuyjdAFSIR57FtVYmddEctKnpNuSzHQr
	 4ZSM/UNkEG3F9r7CZvrqTMZlTtCRg1Jxbfk/iammduOB+l2YTd90iBAHE7adOpkRvZ
	 JyJcXh9dBslnvIehBaAH5NgRxMl7zZa/FWPBS8pNEytJcjBWFF5hEJS3n3/H8VVkvv
	 ZEM4x6h9mjelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E59CC021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174047753363.24765.2795761739479989601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bde2413de56cbf086a0d1795b5ff53f465a0d889154a71368e532f91026cd69
Date: Tue, 25 Feb 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740477533
