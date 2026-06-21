Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7384D28F5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782000994; cv=none; b=qLa191f7UwzfdVM4uVV9Vlll7N2mZUCwbxh0IDc2Hr2qH73C2g/CAfYrW74dNB71CKYnoGvLW6HwhDsew7B6Irrfo/f0kpcBiLjN9fcJjWDwsuX7lTKr5jkEI1xt9zDkhK1fkqCsGhBK9X8Y0MtzmrCn4v8BTo9ZL7xZZ0FlWYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782000994; c=relaxed/simple;
	bh=BPIv5mqduE9sUbsw/PlmMQHRQb4phijfRy2SuthvXyo=;
	h=To:Subject:From:Message-Id:Date; b=Gvl/cXyxuKX4PZ9dpoP5eXGO9tmqlaacm4mpduoigkxutYe+/sGi0Cv0NQy+Rtpcih0iy3qnSvf4L9/kKRlS0EoWfvlOrm1WztVFYyfOhCN07qsoNK4XXu6gA15t1me59j3qO4oWjT02eYSrVoJ8cdqDJDbJdzfSqODb/xj+TcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5u6uQZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5u6uQZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED779C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782000994;
	bh=BPIv5mqduE9sUbsw/PlmMQHRQb4phijfRy2SuthvXyo=;
	h=To:Subject:From:Date:From;
	b=Y5u6uQZtOhQQjgGilqG6xhtnNDp2EN+aadHC5TGPS3JFPzLZwyBa1bgTKcaJtrkBL
	 UXHh+xF4SZfy1oy6qUNpVT19OgOYyLmGv/Lp7MyAys3/HevSxba9qPjq3+frdmTKrh
	 gKuzbFwL39waT0z/KQw19g6nWclkIT8gQbc+JtdhX6Cxhtup3buVWyWSyW1XX4uwst
	 5Bqxm9JIHbVVRLYAgtiQ3bY/bhaiKbpG8CGSzLaVbDJFCBzUNVOHTHXvtrpuVkuHOq
	 9I1e85MxAHOrZokwoOXqSK0y4HJDYFcfqlBkQ4oo7NaqpjcJgKHe5LGWTiMHbmrdKy
	 dBAPZfr25xWIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D57CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200099373.18650.6563341239932315820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0817102e6c0e4d97e3ac084c6693889e232c1c0a36b4a0bc91a82dc6c9ab9d
Date: Sun, 21 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782000993
