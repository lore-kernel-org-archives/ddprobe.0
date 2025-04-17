Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF8642A97
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744879794; cv=none; b=Ol8MwsHITSFBfY++wbdsTzs/Ndq+p0fz/L7bjFSQBEiFOCqm6NLli5uxKKYOHmzBL/0ges/eH0EusfFqKR4NTUw6NbTYYq2jHNTUOD9/rAo1qKgp6mccGLXI17rp7rgj6xjQK1kDTT1ybPwlo5scjynBi0NrTYdk4eKfpXEgLzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744879794; c=relaxed/simple;
	bh=idgb0LqN0nNaYFZUllbX2ietv/KSn51ijYndgUzCiSg=;
	h=To:Subject:From:Message-Id:Date; b=TYSMQf7QDT5JXseQOa90c/pionDvZtSzMceX7QPuY3WfpUwCmglme9DfUokDET5IGmSUYJ2AD74nN0JWQ0rekmNMJBOSVMfh6S5eOD/Kk/TolygQA32Y/gaCaKE2Qrq3qW/RWHmhDJ9JEHKu2a6QO8PyK4Fd0fLMwFFkVg0nWnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltaQesZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltaQesZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A526EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744879793;
	bh=idgb0LqN0nNaYFZUllbX2ietv/KSn51ijYndgUzCiSg=;
	h=To:Subject:From:Date:From;
	b=ltaQesZVMCvD/unyAH9N/HYea07iXS9tKGiajTxCkvugGEaKwFQey4FQf9T2K4JDk
	 4qDVgTco3h1SiPdnlQUTE0zJYBREIrf5sSfru0SDiZgsfCOF6hK4bzTjigBD4NDIc6
	 x0e42PfK+qAOxIjbf2LuECoPQtxsuqBKg+dxJWMICrchDzN3b+1VYisEYI/LFMGwWo
	 ETORrqQr0755cRyXS5CkCrQTYSmfjofKZqoQMp9ptx0n6mE8kVCvHxBgFqiF03hmv1
	 onvziUW7ST/cw5jx4GSBth7vNiQTQpeLdGCdbjqepUdVQ3a6fibXWusS2ul7/+rwzr
	 ze0zGh+MIqyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BCC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487979358.17205.11829243672396862029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feeae121c3a411ec0fe69ceb222a1c4ec8206d97756d486e44c1d810570e7fee
Date: Thu, 17 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744879793
