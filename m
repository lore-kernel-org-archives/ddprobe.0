Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D6D1F8BA5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742044134; cv=none; b=BWRtMe0pFT8ka0Ee8159XvjptRy3SvrBMbx/qdWB/7Jkp9Pc54BI9cMouszY76ZSmzGPDgncOt2uA81u+O8CvgBiXBMTr8RDHqsBptRYIcH5W1NSOPoqoLUGQ+nd7DjDYsbFA5vHbw36cbPTeOI4zxX4wZwfCC/1QKOCNntZFa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742044134; c=relaxed/simple;
	bh=jRI9xwYWGnV24u00DKw+BYyyRUuU0Ah2axLNHiHxREw=;
	h=To:Subject:From:Message-Id:Date; b=q2QgTEWRXI5+NcEBfpCXyk8AaIa0Zf00LWNkwUhBsx+nSFGiTAbKI+m/s4/2bSH6jQSGYJ5A2FQPwDmFqW1MekfQvjQN1i1OkT+zuor9F9Y2iSXlk4Qcu8KAgZ0IdCmpe/zwgeIyvgsvs7QxRGYjs79cwd0ufdYGq21qMNznehc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGrQlLOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGrQlLOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB13CC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742044133;
	bh=jRI9xwYWGnV24u00DKw+BYyyRUuU0Ah2axLNHiHxREw=;
	h=To:Subject:From:Date:From;
	b=dGrQlLOaEs5+i3zp9IUHfSmiD8u7SMu87FLi5l5WDlmKW6eXUT0jeNLUeNb38SgfV
	 2mpZFtGfD0zWmx5rX0TFF639zeFIfggsdn1Jzu6jU07dTvtOVvZ8RvuLbv8wsN2NXo
	 u71ADtHIojYYyxnVoQr/EfES9/WX5fYx4ocrIaEyxral6JXF4TpkylhpxFI89LoXtC
	 LYrKyur3DRXqwJGovNXf1pnhpY/lCL6rVogfG7aXCiboruG30byMNOPo73/5sgUVvQ
	 DEK+w/l65GGmCfZZH9dqpk5KObmX14yUa4sXLGOe6Rey2bDoyqA1e/CQwe0OnKc9c6
	 zXRUwBT5DgBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18CDC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204413371.26086.8816296468560222406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3664521bbd671445db3cf155832950bd59f0a69b8fbcc7ce43d82082bb26027
Date: Sat, 15 Mar 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742044133
