Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C50D515
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745115594; cv=none; b=cbCM0Bqjz4eoiTatKWEYHTgKzfnrvgUF+FKHh0QVb8wBxeycqATHc48DM2QSVZeQdM5ZMmCSdoCpZ5rFHLN+bLsJd6nHbR9RuozHOLpbInHnpP6hNSiWhPCpc95PSPNK9YVhpSQUug6l4si20POh4eryV+2NSrANn2l5KRyHOUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745115594; c=relaxed/simple;
	bh=Rwga2ZNvsK6mIFWjVxO+T7MxRvuTvupHhaGsJvO4L+I=;
	h=To:Subject:From:Message-Id:Date; b=kKqsl9pNH5cDbJpPT23z6BJQsbeIGucMw9ZM6N04bbuUrPBcch1oVqMd6X/E/VSavUbUrsRcrpRy6ZH+NzikRLPpTOg8XnawKDTK8tj2najYJMx9fTTkDdOTDJNMwQ76sFZkPRQCTNdYF8FsPtAuqyT+xrGLlMHNT/3QlhMJsiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe9L6Orx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe9L6Orx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF210C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745115593;
	bh=Rwga2ZNvsK6mIFWjVxO+T7MxRvuTvupHhaGsJvO4L+I=;
	h=To:Subject:From:Date:From;
	b=Xe9L6OrxAOPWKXTI28TSWB67twGSgFkfM0y8y2NFptI/ZdJm9E0y9F0NcpfoUckpc
	 BwfXRczZautwArRWmrMj5JhwhWJlkRfeYEXQ8pku1xP0BrxjzFBkjGBo+5KBpuJ+eV
	 wqCoInYSrVS8V7cYBmf9PDHspKPWCXC4PsfH0gpnbnd6D7AEhHd2RQnHmNtn0o94h8
	 mnjTGnfXaSWoedq8jAvanZnPTDBdCVr4E3DkmknD+8JCrCeN/XzWhTUeVE38TqUuYl
	 TLcF4MFkrxOpozvQm97d80ks2V4YRZx5FqqjH7F44VkZs++/Uo4XeWpNw8poWp332s
	 cKqU6tD93UOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F57C369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511559360.28094.2328411045583314787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac050d233c7ff4aecee1c48830afd6626083c018b2c1deae346f885439e4afda
Date: Sun, 20 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745115593
