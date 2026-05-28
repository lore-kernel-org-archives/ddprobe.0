Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B65734A78F
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779963754; cv=none; b=KFrXVxdemMzvelREII5DnnhpVpYXlhYaIUVH8b+Jq5+k8hzprWnHIzDyUFZ7hiRP6BoOp8w3hbnTsIxx8lALJw9zvXMHGWA7AO9lqH3/t4qtwTsVVkTauS8Q7nP1hx7+FSxX+h3JLzLBdnVYuQ7GU+79ODn6wKw81Zunj7IL2BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779963754; c=relaxed/simple;
	bh=xkmAG0gjZW96ytGkI+4u5sKGN1Z3j7vq0MF5cUVWPs0=;
	h=To:Subject:From:Message-Id:Date; b=TkrQd4/eNDvkc/qF2fRx2tBe88tKKItpyno2Z9aJiVWyH4YSP8JEOQRThquWJR2BaI4QFwgrT3xQBrN1otWzUpSN37gXf6j+b7H7/U/R15SrmWRNpOuf3XsvrydbN2EA+URzAvnEMDgq2O0hGIC586o4oGlu0PM7pHR/MajH3io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIgjHJjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIgjHJjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA3DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779963753;
	bh=xkmAG0gjZW96ytGkI+4u5sKGN1Z3j7vq0MF5cUVWPs0=;
	h=To:Subject:From:Date:From;
	b=hIgjHJjjQlNo/PD1L9Sua+4n8NwDg5rVXCbhSXR5c6ckNOx8uFci6KOWyzv1lUFYm
	 E6DofGXrE+TwvkFIN0Ra+q5O7Awzk/lVYqzNQ9t/mNiHrmGLTOhYiSFJi8Y5kd14xB
	 Qf1JQQ5RGt0+1kuWVarK7x2z4FRNlKLMeyH3zjLZgBtIy68jc8bwaWOEVIkLkILOR7
	 Uw45+DoRNDgn/wbXp3dNpznq3xoFis2nK9VzocM2s3lQt+kwWXIuz4sq1aK31pvXN5
	 vqHoyb63s1IGdr8N/IgbxsyRUq2r+P+dOX/9w9BtrPwC38PK2M7qXt9E7C5nE1k3Py
	 /lu10Gr9+r8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8939CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996375368.549.4614670578249743982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7d598dc4eb41045e8bf1d559b7d798963cec5eb6268bdb3c829b8c75929b43
Date: Thu, 28 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779963753
