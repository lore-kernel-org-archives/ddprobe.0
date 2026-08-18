Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB910386425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787017836; cv=none; b=KwN2k2ga0lUEgSacyIfBqp4y6OSiblCknGfbedM3wo4qU6FrUsU7XgwkRoQIrCA86koM9Fnhnl4HWCvqt/GpgJrPVDsBP0WNkeOFOy3WRGQTpK+qtyrGwKJAUDBK6o4kiTvYizZBZ4BdazIdqnDfbcdgA0FqFp+pYjDh3kq2uFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787017836; c=relaxed/simple;
	bh=MepVqXnThpubb0c8E1LYgqu8eDgvQqEPViTk7oP/KMc=;
	h=To:Subject:From:Message-Id:Date; b=JLug90xy64gGOvoDvCPShWYjI23qMI08KcAL27UbOK6c7xR/l3lDJ8sssjYgBgDCQ468ZfRLAXxoQX79R6jNuN5m/0EKA8FmXvt/QQ0eB9sUzatxwCQpxQPf7AbpHiqqIz+ka3uW1wCoeDWCX58L8gGECD9xaKKtjiOXIoByrdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgtAww+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgtAww+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9841C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787017833;
	bh=MepVqXnThpubb0c8E1LYgqu8eDgvQqEPViTk7oP/KMc=;
	h=To:Subject:From:Date:From;
	b=GgtAww+9K1QArR8cuRMxR4lNQZJcVSie6+H2WVSitUMRl0VHRHlK9mCsnmjEmGcvD
	 7cdf5VeZs4VUqfO1jjMWVi1QFqebqNVMShsecfvg+JZ1Y+UrCW1h4MXCePSo4NQ9hK
	 yKSMEnmOlI2FanJ5yyvjbfv/Bj2Dk3uFSPN4hpvgoX+aOeki1c1BZKJrgg9EsP5Jwx
	 YnHNK2IxXRCo6TM3cLpKyLMmy3+ClIitpUOLqPf3BVWL39WPsquQfOA3y0DkiAjXn6
	 +b2QextTJpLeOydJQC9fOcooxRdnzjTQ5+svUXS4Zhl5RRTo0TfB1GUdEQE9WLVxuE
	 uZAs+pkI/WcVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E5C5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701783371.7216.13462141856890595335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df4c56e62d3303db0d60257f4e818c4fba980ed839eac7a29d21ba795d6b6fe
Date: Tue, 18 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787017833
