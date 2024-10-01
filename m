Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9538E19AD6C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727771754; cv=none; b=meVV7YrRh0JRLAoE8IXkxqfQccfe0H0tyHZt/nuRbjnLn5fkA7n0Fse4yvB8sIZ2vTgkA7nQ410jKN5391oS7zMLxbw1ET6wpdayqWiF1s9esDDRHBt0coVuEMFc82fmsWbZ/QWnue/yo8JV+hsiH15GbK7yUNqRrrLV1G06aFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727771754; c=relaxed/simple;
	bh=0aROlk3mDhWOLiFQ3JVtXaDrF6z/kYZvNW2iKcgBEPg=;
	h=To:Subject:From:Message-Id:Date; b=SXDYU+lIuaI5ak2486DapxN2Coj4QXVuhv6mMdduFNlGVBSCRk0Fytt+t2fZ5+pprUZDPzUOMVmvfV+wrf3pte3O2W6WRKtCLmpLTQiOyX/o19x2U4Swwwpr69LzIzspiRIbF2/7XVopAI4qp0pmt7H9Fw4b5vhs7TQHCqASX0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjpeQBdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjpeQBdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2392EC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727771754;
	bh=0aROlk3mDhWOLiFQ3JVtXaDrF6z/kYZvNW2iKcgBEPg=;
	h=To:Subject:From:Date:From;
	b=IjpeQBdj1ru/Pw5zfe3FOljyOoIScmvAeuADpvgFRemKwOnxcCHz0ARBeYTbNMkeQ
	 efJ4insl1AYEcT0MoSWXFHxPIp1516qCcvW5ZaciZYIxiI1+zqhjzG5j7XEs+WlSL1
	 XsRn4F1zVp9YEh15BvhHSuVTH8rOLDjZ6FQ2m8TJRtv521NyTbCt1hnGCPPtZCHebY
	 ROfqe+v0pljmqExSyNxWb0T5urjK/hZsmN3zR5v68XUg+0J9QgBawat+7vXMytJ9lP
	 j9l6v0kEhh1i6z4QjPwOPJ5IFrT7tRo07qvpwxJYSV2cu8tSzWTbTNH0uBErm5dOpk
	 p1JI/vmh4ajJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8870CE7CF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777175383.11034.14327833109263032568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede08ec2b46beb326159936381481e5718212b0049ee6560fdf157b520dc989f
Date: Tue, 01 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727771753
