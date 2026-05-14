Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375942C08D4
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778726434; cv=none; b=kaQYYWa4p3YwWhj63CJK81KD7xU1EO9spdvXz++LFJRjUmUsAsT1nVI4uYqAPVXHDMvAEnwXYxLVHW/gs0XBbt0X0rnp6XeZwEN8/FELug5s4/3Td18L+s4dDM3IUdnZcQGLNkWJnjFyeK6cV3zv2maN1JeuiEuy4H0VhbkHM0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778726434; c=relaxed/simple;
	bh=DrjhdQMrXlaSW6lBJRFL4FTcxc3/4c3zv+kSIyuGxTA=;
	h=To:Subject:From:Message-Id:Date; b=TH3a197jqy0NcObeaxZ91bXh8VtWswslRejCsUpVMth0uzcvTUkRAhx4R7TgI7uY9Sp3CLVv+Dp4gbKwq3SpDfzb2J9uiL6pkd6a01QRR7Rc2gYP1j4PtUZwjLzVroXPbTNRtWACzGkwNkQwBPPPHkTW82jwNKmeevo7GHmhhls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHMnEXHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHMnEXHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBECC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778726433;
	bh=DrjhdQMrXlaSW6lBJRFL4FTcxc3/4c3zv+kSIyuGxTA=;
	h=To:Subject:From:Date:From;
	b=pHMnEXHitnnG1yqD5+vpLAsewFPuOnzOEa08PfDsgk8vqH+94hXAs6nLUU2Txzz+Y
	 neqj4Mce25EgsXlRr1Pic8z56xtj/9QfwU6tCI9PyFUH3wxBACi1tuHGEEjd7+BZs8
	 YuunTKI2+Yx+Fx0BeYmZrCeKMFE5t4yw77osUdKkHAbSnIKkssc6OjEvKz3BXtPHWI
	 amsGquCcFegSwks15naq0cGtKxEM6rTrkpXGnY1Jro/B8rKUMLHE1u4XeC8CraM3WI
	 Pg6W/EivyEj6lU7eVvpsy+4oqOmEKJxOjqernCkgOxIEgLm7RSFWwgwQzVdNkRSBr6
	 F8WbztTdN5+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA28CD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872643372.17504.2383703917333187176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a72b5151741055de36c5f96f1027d37ed11585e59474a1599a3b41a604f981
Date: Thu, 14 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778726433
