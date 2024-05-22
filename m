Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD0E360
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716336803; cv=none; b=RLf2K2HlQEA92OOLM59PzjnMALLKbOZh8yhFKkFuz0caxe7guEgNLuRQvdo8SSjXYFRXLz59i+7CPy14zdhti9eCa+g2u6cEWvE5IEgCGjCMhfkmSYNq8eW9KnrpCdjKcT8/4VLP69YvcceD+mAzRqGUixd+9CmK8xOzVaARDNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716336803; c=relaxed/simple;
	bh=anl3QC3+fqQPZ48Z1V1ZYJh4nxbTG4hLodKd0NP7xiQ=;
	h=To:Subject:From:Message-Id:Date; b=N/WFc4NiLKYX6rni9OutGq5Ioo2s1QrDaJTOIQpcxI2S2U22Qsb4TXMAV1rppPXMyerrnHuFYp+w7b5epEE0Jx2x61Q/m6H/5SA8Rq1zVAqzSoiWOTqn2JAXsvcs0X7ch0WWwRRa59u9Mn5gpmh7U72buwieBVd/PUjqlM8vl9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAIdC4j5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAIdC4j5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1895C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716336803;
	bh=anl3QC3+fqQPZ48Z1V1ZYJh4nxbTG4hLodKd0NP7xiQ=;
	h=To:Subject:From:Date:From;
	b=ZAIdC4j5v6+PAF2LNOEZjYgFWYmrJ3LYcPJ1muv0guXaDXEqdyTwmEKO9v/4IA7FM
	 W7V5xuxgoru1wbcFhv9z7+tx9Ny6QDQNUnWIJ3WoPfKnlqDnXARq9PXqyNc4iBrUU1
	 mpQ+4KhN4P4EcOVWLYzh/3FpNVdimYOtqNlnpqGqgNyBmEyjQlUuXOnkofh2Y3c9DF
	 KsMSkv7Tew0OznO56VhxerP63FOVW5RwWk/mlM+WPXCHT16CW3n2M7mngme6H7ugG2
	 i5YVTAzRIq0IYylSMVrDFL3igICUhtyk91P5rMrDbpNfYu4qqi+m75du1qPsIR3yxr
	 U8qIlQ75Mu7Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA5A4C25B74
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633680284.31625.16274026162764499736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4842f5fdcda17af68a52258ad13db1c31556652d0df9a74626d766d27194555
Date: Wed, 22 May 2024 00:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716336802
