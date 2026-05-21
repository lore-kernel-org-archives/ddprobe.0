Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD453BED63
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779362434; cv=none; b=D3bAi7qea88554x1PU7VTkHM/dKe4Pd/XZN+tpptKrn+/wf2ZdpEN5jME9iiR2VKIITvmlD3Qh2idQ+UDM/Ye84YiDFGd8D49MqjCxEbejpCOYnkwLXfzydb7YB4Iyi831vxNTR/UeXtnqUb8wqpGjd4ywe/cU0/PiyTybsmuyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779362434; c=relaxed/simple;
	bh=vK5kFXFf2/WjzHTTZyzAC9mjTSHmT+EOIBj/GuVkZ8A=;
	h=To:Subject:From:Message-Id:Date; b=R+LKhHEvHocXcTMSJZk6GufYUZhxN25DyqYGw3PEiAq2jGNvGJgw+jpZ4MQdnPPbC0bnLHGiRRSv9ezTMZ4fNbVSrjrpAL4EExP2QL/so3uvt5YEuJgbcOqHVxoWPXw2RtEUcHnb8gfRN6j9D/+wyD2zYTc6G974X0m+yGV6LNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoEjsAND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoEjsAND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33A8C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779362433;
	bh=vK5kFXFf2/WjzHTTZyzAC9mjTSHmT+EOIBj/GuVkZ8A=;
	h=To:Subject:From:Date:From;
	b=QoEjsANDdi0Xd7rxi5btlJGYaorFHGyuwbvS/c+otzFHWz9L7LUTzh0W1KYsUeTjX
	 AebtlmCi/3m/I9YC84Is11rrVeH5r9XiYDEnFp9ISDt7VtlDSkp0gumgfzjDOLTOw2
	 4AjWy5BtUp2oGd/ZSOjTEtNLrQx2EBSs1GGBR/IMoua2VG65vPXOUE7zisCTKaspyF
	 xlpgqSgHpRH2GuLtqA2pJyTBQjY24saso+B5//FrDN+JaZ6OFOeYJ0+1oXfXoQ0FMi
	 Eg4nqQJiW7YKOKoCvcDJ1V271MEFmJLhabAzGQ008sprWZ6p4Zikk+pbUZe3zLum14
	 jz1iLhCX+iu5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCAFCD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936243370.9316.14081572734140752448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7e0acbbcb19233addb1425ad74fcfce61804b09fa7bb58b33b0f663db6e8d0
Date: Thu, 21 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779362433
