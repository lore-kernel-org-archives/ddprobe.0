Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3205AAD4B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754026794; cv=none; b=Ys2cHKXBfebC+mqeJkh76e5behXDAPFMoOTTDkQA+1qfi8mBugX1BAdNfbX7wcR+NhhaRdaLdChNlZ/Ru+qFXvbCQVhIqFvHmiz8OqX6RoOryhQcr08YMhTr8vz86TiFb2ShjXW2i1Jd0+A3vukO7JtZhL0ZaSw9dzfxZsQPDLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754026794; c=relaxed/simple;
	bh=ntCzGVyCM1Ef4CvZHhmhosNFFCMRqsPub9Di+ZO2Na0=;
	h=To:Subject:From:Message-Id:Date; b=Q8SCJpuBdsgicYiilzTlWRmc/JJ/3yydvlENCQ98iQiXicuDlGUvBQlYWM+DWQ1lj5ttu+2Xx+cPed9XmakLMHueg17RA6KUpIsgTmd/5cxzUNb3CzagN4zdmUU5ldL2xeRXoCcvmfgHDm/yV8EdIYLVQEoRPZFvPhUH2/7oyus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGOlCgGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGOlCgGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754026793;
	bh=ntCzGVyCM1Ef4CvZHhmhosNFFCMRqsPub9Di+ZO2Na0=;
	h=To:Subject:From:Date:From;
	b=VGOlCgGGKR00IqcZIqB+XbYWwpgwuh2QxfMeKO2epoE6vPvfN7w1z5qgbI0Ue7L5o
	 UGE6nybWlEffN7yfSvxBlT0jjqVu75YeAtAWo8bt5Ohw4KTC2+nQhaOBSuSUKwEMqa
	 KRthWi0D2xsEd1PU1GSp9ZU6m18aQdNkN/kwPPI/rUQhYwwaGge5o6Nn8HAfB/HSYq
	 2QLppKbp4hXyoYJJSWi9is4o2KUOPTXNOMtVBr0UpMHy8veNmMe8oe4l7q/XaEfRDb
	 PHUiBw1Ih3Z2dUZLTQ2OGimNMhzYv4om0SdJQYGcrLomAhtZX+7b4A20ESgc6iVV+3
	 5EWXOUvA6srfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192EC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402679357.6580.7834706529718224144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48a676c123b793bc066ffec3cc9064183cc78778f8bd831479bb5b7fb056970
Date: Fri, 01 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754026793
