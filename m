Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8F3E63BB
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779975754; cv=none; b=qqh3jRLO9F4M9xQaPpOEgWpXJ1YwVvg36/YYGP+SKIV67sAxTDv8G+QKKjXPGc9lHWfNICoZVnmp0oo8VRS5F3eBvflI9aD9MFqwnHZRxwyO9jI16uTOpsLkUfQq1zzkYucL3gt+6LWotmWzyD5lh45ArkZXTbya01zjOyzx0hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779975754; c=relaxed/simple;
	bh=2w/vqoX2W7DXuea4AP3nHkiOQUh8bNP8xp+yLjYTnHQ=;
	h=To:Subject:From:Message-Id:Date; b=s0W8MfoRdmss62wl6xGH6WlnEBn3WxlFKKwDab172aSVgqqoUoSD5PCk1rBw42Qd/07l7oyupU5ZazPGkQ3fI0wENzicwupdbwSZVWoZvAjA/rlGvB6ITPRZ63I18ej1pye7V0wubiexMsHjY7pJy/hMgEnbHDjcaDMI6yYN8YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcM+LVbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcM+LVbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CC1C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779975753;
	bh=2w/vqoX2W7DXuea4AP3nHkiOQUh8bNP8xp+yLjYTnHQ=;
	h=To:Subject:From:Date:From;
	b=YcM+LVbFIKLMWapajkEqhnm1vvQ0K0t8MFtMGFbVJeD9ti4aqHEMlKjZdei19vKLc
	 N4R7gcVB/gWk0ca7z5rLisY6GAkvKehewgDzPrn6AhLGEsCpnZ1xTKb0b3eMY3mJFT
	 ypF0u5GRXXRLlAcCoBusW4oxRGgmVp3MtSpJf3iGvcnOGuAEwiiyA13/o7uTNFmdth
	 yL2vTi9445xeSYATxWoKr+xao29KcV0IAHUH4KA/vnQywiNybUFq0HHZOLs8Wq57UC
	 ixeECyYKxuKmVoe2MOWXH6YTDLNtKn1J5wIrpgeQLA6qcp3n7tUdFQBnZmfUJs4E/Q
	 FHFthCg38KdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C2CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997575368.29065.8428505830031385244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed7ebc7d808c30efff072badc168617d6453b31c86ba9cde597f63e32cc7515
Date: Thu, 28 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779975753
