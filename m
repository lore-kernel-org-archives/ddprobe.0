Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F6C1548C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782661714; cv=none; b=PodSeihjLX7fxH6rcCjuInqY95HOVlguPCpVkQJiKtN+g7PByEvLWcVQKbY2l1APnF0EArCP9vEyNkxTEoIPOGa+6kqT0BZznKNffzQkvrA4nwQh6FEdQc3RlLRrrz6WE4sRhb7cbGlvUkNgN3VFzm0s3wBz/BRNHWAHCAz6Rro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782661714; c=relaxed/simple;
	bh=mDaGrjPkpFkLoy13IOcvNMQ/ysJ+xqn1Q/6AXbL3LU0=;
	h=To:Subject:From:Message-Id:Date; b=Yef67wIQGSWTRNH+ZArSG3NDrypLy9oFX5DLS+aUYox2RQ1xAIEhUAEcxd/9XseXvLQ/9uAFD7Ud6R7pA3xP114TiSZ+KDVlcuetSC3C3LmI2D0Tv3sTE1xosNXIz8qYpAjiGxWo3kZ3nj59Aha0HeoMc71j23WfT6GGlpWq9Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktV7bfxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktV7bfxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A7BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782661713;
	bh=mDaGrjPkpFkLoy13IOcvNMQ/ysJ+xqn1Q/6AXbL3LU0=;
	h=To:Subject:From:Date:From;
	b=ktV7bfxZq4L7VPSC13q48kRM1j5kBzD4pRiXwRvv3YM4BgM6UdTrDhli8+5T+AdGg
	 fXeR1JegbgjqSkB5W7DnyvsbID9k/hUGHbMdeqPMiZqLvVgR/uCFuzzaGudSAa5wbh
	 FRBH1vid/Ekt0zgXoI/7RK8p8YuV+vWgtK0AdvT+MCDZGzurCAPzDcqWez7+S4aGUR
	 9iUBV6miw4bUk+zsNoJ32YDvaJNB0W5Z4YQHc03lNhSJj7dDfAQ9kEDUNy2MAkWlaP
	 P+tSw5xtOd42N8y+iBMydYXuDjGSNbojS8dmUE+YJST929QGpBZ1A5OJcWlMIUi47h
	 o0uMvMQCqm5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFAEC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266171372.843.5212446638312883498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d19844019a8cbad7115e457d6671a0c4766f51110d3f34da5374e77b998e9cf
Date: Sun, 28 Jun 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782661713
