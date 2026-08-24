Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316F246BCD
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787587234; cv=none; b=cCxob//2sH/CngPDNZcMCern1P10XV+v+/wjTH0TWVHOzeNYBcapmxpmq/NrsC0moXUk2iWUYCqMI8GR7WvXYTp0+mueE8t1uvzJMKoXc3VeQcMTdnDCH1OgVF2XGsISXT48JNzmMVUvNrasyYctX3gNI2GXdCInp+/LRNuajmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787587234; c=relaxed/simple;
	bh=Zt9NEsydI1dxnMydcv9ZyKdp5mGw0sSFVxLruMLw62I=;
	h=To:Subject:From:Message-Id:Date; b=TwwLiDK5thAhM7l5lxkUe3VaWCBzDsA6OiHMqyLIAJybNnrAGaIHfOk05RxSFL/BXTA8nNos1vDnMv3UtZe6XbZLJtqJnDyMLOfLQJFkVKBjCwBgwu7VSEjG8mIUKVeb9lX25GmXJNHYyNn0l9mXo6JZLQAFEdiP2V1JepHqnu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUpDPod1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUpDPod1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB283C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787587233;
	bh=Zt9NEsydI1dxnMydcv9ZyKdp5mGw0sSFVxLruMLw62I=;
	h=To:Subject:From:Date:From;
	b=LUpDPod11g/exF9eITzAMJ4J2qDWfzfSE4bWeVV7itRpZZXxE7DySIKdglKk8sGyO
	 kQHRqmc2xGPVPphFxxOLIlDQ4JcO5Vio79vjArcwhWwHME6kaxusBbUoaSJkn7VGzh
	 Ev36EKIJfVWaUaQIwcqtXtnKByuTsXzvGG0X0osfQojwy7JBvDvJ3/YyMjVmXN2qlf
	 v741n9a9gjDprECX17Csm4qyXPbDqvWTFKwuv9jw+80hqvroO0vlYwboIlZp3nBD3p
	 xDx95d7uQ2SKhSx69Hdn6yEAdR/F++AeSSqitlezR5VXBPc0ct7QDkk18CbLerv2v4
	 Ks9fy0XbxnNBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD7CC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758723369.21668.7657671703600946063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ca4dc097a41bfa134634667fd43d305355d4eef312ae609f5a51eb7ad25cbe
Date: Mon, 24 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787587233
