Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A039218821
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773794694; cv=none; b=TtTiTUpRCNppV8HdLeYQumouWPwqknb/YHy7E0Bdd3cbycsaUmC2N0GrTWe3erzXPlV5+CDlNlIYrmV7p6pvKFw8Y9TS/0lyS53UaqDWjjLubTe8fgO6gdzu4AD/VBSbTa/nuF8qYb4HHxS9qQf0BUPA3piUuUgZcWMX5oTwbOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773794694; c=relaxed/simple;
	bh=FVl8QHsA1Sds1LBJRaeycc/5almH8HF7eZ2tHRtxzN0=;
	h=To:Subject:From:Message-Id:Date; b=VFE7KDnT7+vJN8LuVjyUkR9oXX9eS42GYPcQblXZOx/qq7CG4o/mDveBoYF4LR2ep3jW+vYfBeLGdaoE7TmzGKPJ2/rgIk3+jgxAFTOv1edl+gSMII97e+wA5lXMDo165V/+0NgveH33Rads12ubAYiRnae/gxJOXVjwZN5Eic0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1gQXd97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1gQXd97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F46C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773794693;
	bh=FVl8QHsA1Sds1LBJRaeycc/5almH8HF7eZ2tHRtxzN0=;
	h=To:Subject:From:Date:From;
	b=f1gQXd97GCC9niu0zna9kOJhJW3b+qD+gdc8bsNA2JLEpA+fNztzLPn0FniPFl6iA
	 I+4NtPuPUuOY4LRKO0sis1Ono2vM4tuxsFVol8K3732SRC7VhiEJFkJPq2yEOSRdKJ
	 57B78ovQix8j9GVmapt+kr/c4QbzQT9OQlwWHGU7p+uFWk3GubVS4sl7bj3AlHfN0R
	 fdYoXhNk1zz2/F0ursp54MXanB5z2PgotkZVvMx2U6C3dPjSLFV94WM6r4xwnwAfu6
	 VhnFxG2svADyVPpqt2S4F7LKAQraWTVccMSjYAMFGY5VdWzdTxENKwT8DpmoOfKVey
	 vCKTznJMy6Qng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9252EFED9E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379469359.26352.18313877133586355743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fc16fb61efb1ab64e8d973bf1d854c9518b25c098a8b08e72f47e1045e6657
Date: Wed, 18 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773794693
