Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1162E38AC8A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781549794; cv=none; b=Vvbq/L0Sodq+rdKErfizsIaNvZYXisnvti8ZEO6rymCfhr5RhtVdZIb4BCm/e/Yp6EUQUA2eAlo02lxVjCNQkK8ivkpWaV5FcAdWbkw5kkUqtiie7FLtlKZavgO2rcTnMkfEJz8RZDxOG7TZmfpZppFhSYYtxxUh5TP8Xz8yiNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781549794; c=relaxed/simple;
	bh=gZ5C2/hCjUXDd2rObBWzpKtoQQUTKL3e2m9Dbp5SmSA=;
	h=To:Subject:From:Message-Id:Date; b=KrgZlTQGNOH3F3iPBzVw6Ekrqz2PDPgdR8y+Jw7NYa5/O265bY4yTb3CbvVzbaZg98Wan3CimtgQf+7jLhETKtraEOxwYtI01YEEXSjIiYu5NOX3EuqdhlLetRrKwH++KZFvFYBhRimHq4M/LyN+Ev0/tGO7LrDTPu8XHrACXOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCg+fw7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCg+fw7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CB6C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781549793;
	bh=gZ5C2/hCjUXDd2rObBWzpKtoQQUTKL3e2m9Dbp5SmSA=;
	h=To:Subject:From:Date:From;
	b=iCg+fw7yp4ku/WrOmIxPyLRHhmF8wSyDkAe+q14Ly4XuPOrI4DWWT3HOwt0B95ezj
	 4K64w6woO3GiRs5hiJB7RnqWTZjPUx7GbXvqCieV2B1kJxRNA8R4rH31lC9kJFpSOA
	 fS2Jk/siAOi9Iib0cJXtMC+MMvIhSKf47vEvOzaw22MEezCGH7A12/OmMGTSHBRgda
	 lmdcYkS3Ywbrl0SscA/+jitZZteckEUljo8+B84FdxRVh3d0VET8iksyeply17+NV7
	 4J6fG6StehfA/0EnAmsNfSuUiTE/2Jxyzt6WMp9E130J7JiQ/GH++IHlIRbwh3Zqm4
	 iQnA+xA3eN6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0CCCD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154979370.13952.5599409767423406689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27961a3dad083f9b07a68a630e21f465bd029dbd1e0e578fc422cd38bf510d84
Date: Mon, 15 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781549793
