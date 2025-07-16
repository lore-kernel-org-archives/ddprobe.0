Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A702D052
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752631794; cv=none; b=M7aPQGJX7Sy4Rzxfvth4jyVm/KhVd1LBuDGJLEEI0sovOALDQHgyP8d9Hvu0wfm02Lh/AWUrJQ+zbYGtFKYtrDIQZnoXoM7PTX0A9V09XbwsTT863K2/8oUbi2pZiHpNOfTyknQf+VW5+eGGeKqzBpF7fbhXoGYbIHZMc/dQgUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752631794; c=relaxed/simple;
	bh=kjHuzCBvO8+JwDOpvOxEuyQl33UJz+TryPY58rcMEZ0=;
	h=To:Subject:From:Message-Id:Date; b=Sdpu8yOf0PY3qcaCZGVAJKWsWYIeXSSuGWFklpiJyBh/0kkMQH7uNeVUavu+4YQ/YcGWd1ATRq1DVlhaEKf1aBflJoi27GRAZ4xJaLndkV/t8BW0OeVGmwP0d+myVaxa2R6Yva4J4eL0JZnBL6HOa/iuYEn49NvcjGEFJlApxkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7Lq/v6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7Lq/v6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C37C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752631793;
	bh=kjHuzCBvO8+JwDOpvOxEuyQl33UJz+TryPY58rcMEZ0=;
	h=To:Subject:From:Date:From;
	b=F7Lq/v6AAS7z6JNDi280zfo9vbCPqJY1ZJ8Cpy+1dpuDUMbOMwskngTSNHfixvVUi
	 cYh/C4oYqNi+AiY0q8abUCzGiYhxNjgOZ35PdaB5IlxIJ22MchgbRR3D9JKKY7HW/d
	 P2wRieIyWN1MKu5Dk9LxwX4hlskFi3wqv5Z42u9dyXmlBvlWgb6G10ViyM5W4lzfaB
	 1X51cC+YnxxhPRWKyNw+ivaW38TxL1HpWb7haqhgm0H9iS4XkpBKPELMElR38oMsXa
	 Qzry4bvpwYSaWyJWjRhLxDt/GqbLOvGD7OMmm7mzEXiH4ory/9qDnSLFX0Z7OavcFF
	 EvDzZpfcPTOOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B7C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263179357.7555.12760556410600325044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e50e392e931450b81d6b4af9783148861eb532b4a14f335e5abc9817b019d8
Date: Wed, 16 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752631793
