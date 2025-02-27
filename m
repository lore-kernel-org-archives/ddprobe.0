Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A20622FF59
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740654534; cv=none; b=TB6XSr9nWCxDfF26rLPp49Sdf4v5Vdy9lldcHG/0mwIIwGF8g91343u13P4CacCtgJNnA2z08YTUdMoT1UXhBgX2gWgyKEE+BDm+5mU+wV4MqZiTg3LiY3b9bW7LzZGspxqxIZ4SeWcniBdUn7s8AgRhyl1yuDBXF2S/yOPdVMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740654534; c=relaxed/simple;
	bh=7wHItoevRQtClQP5gkOSKa9lJNS7Zu0/zMz8GK9Nnkw=;
	h=To:Subject:From:Message-Id:Date; b=E1MPFIQLkWABPQ50+TbCM08tCQbp/d3qGXlsvIr0VUmejJPducS/+p2OD67vgrvUxJX9Hlf6ayC6OqAOJLgt0LP6MzLCXaII6Of1i54kbZgWiBqYUgbfc5T7ZEEq8Spmxoj8Lin6BVdoYEibz8rttGFSwZAAiZ3I2CjZKusgE0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyQW2WdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyQW2WdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7FAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740654533;
	bh=7wHItoevRQtClQP5gkOSKa9lJNS7Zu0/zMz8GK9Nnkw=;
	h=To:Subject:From:Date:From;
	b=JyQW2WdE9w8OhSbtmlT+z3AWRN/RsvV6h6W30tp7sVt2piHcmQM220jvLQGosz6Rh
	 U1awN7TG+CGx9cBtn2yt7LvezNL+o5DIIJ7KqFLmzqawcMn/Ckd9SWgZvfWv2Lsu9p
	 sH11mDxJ1zeAuUf+B0JkGpg9LYFqi872hFfKTUlvpx+m5vdDTQpqOi0CBg/5wp5i2y
	 YNdm2I+kDayGT8qhPV2e574YPMja+zxKp5dXFjAzrK5MY3k+zsPUwE/Nu+IOXbuEv8
	 c7+C1pofeuWTB27j9FKUF/KCTBZhcnPYpVR8WZo6tMBE0X+3YdsDOZlazfDcgZPK1L
	 8WenqSy9UNRxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98044C19F2E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174065453359.14341.17911731487122041014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5b200be30fc7103de3b6427f553320a1c9d42c0acef16994a76127a840ace7
Date: Thu, 27 Feb 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740654533
