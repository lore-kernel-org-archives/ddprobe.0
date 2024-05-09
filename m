Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625A813BC3C
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715226743; cv=none; b=YMNnZaa1uucRm4czHmex+EvX2f8RCm8a5RN7/6WKTkhqyDgr1RL6j+Rb+10d0/sGS5itZuThylYoISmtRPqF4bfQJgAc/K+feqHbCOWfz/53Yal2jzxmdh5FvQjafRAtmUUuUsvP9kR0NRI7ArEpgjX53XaAwsqR9aTSc5YGm9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715226743; c=relaxed/simple;
	bh=vCWU/fkleaytS/SdqMcVCp4YScU4hI5LpjG6hfGBUfU=;
	h=To:Subject:From:Message-Id:Date; b=e0QbRMSiV8LCh3pGGfcl2ASO/2eV8kGE/zr3tD458Vx4gZYVmaufjCGZLM9c56sHewM4RuX4NB+eEb6cSrvXjTAjS7t/KeB0zcNQzTKQU/EjPe4PsJK8RoX50KVa5a/QA6LJYAXZRwkg7PDRVyaBDcd9mYKTBllTIvm3bV5vMf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9YGOmnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9YGOmnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E776AC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715226742;
	bh=vCWU/fkleaytS/SdqMcVCp4YScU4hI5LpjG6hfGBUfU=;
	h=To:Subject:From:Date:From;
	b=N9YGOmnZt+t7uQ6ahOac7qRIT91vH01CXXZNGffxyhwLtww/PqHVxgR0I6r6LfaIZ
	 v3+MYo9CR/ludKQMq7YKI4KhapI9PdS3xQdAyGl1l1HDU5tmA+parAQizxkww6WGbE
	 9AqM1gKb4JU94oN3f2ryAx9s9R6t+NX/vL9YReCRUQvy6hP5fncfypLdx89QYlUXGr
	 XTlXvfmT0jyFU4y27L14U8oNniL5S2f5hw74uzUGGRdikVTLbF7xaw8YK/Azshd7EH
	 J35s/0HPM2yI/JPGrxxZHGYTB41mblipIEStg3bat6jUuyk9IurO/dKdt9uwt6FWWQ
	 cftoQ+9yRvYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF82C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171522674280.11766.14102989573701255105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b9c55d9ebdff9949c807782faaa54a5d0f14cce13c75d66b5c7cb0f572a32b
Date: Thu, 09 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715226742
