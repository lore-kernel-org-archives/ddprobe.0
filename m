Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430C1BE4A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735770954; cv=none; b=f6kR+CPJcdPxCHj3YFW2cRGU5tN5oQJYCuRn6MijtmO+aCq21qjoCDsqVv9BKZXVDKy/QcbEbe3jz5LI+7vtTYs1vebUCJdDP+btmHyNkPUgWRHlOBZfp6V5dyOsqJS5c5UH8WlArhweDpkpuBxfN2HN5C296F1teoHn55NjZP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735770954; c=relaxed/simple;
	bh=h7peplsxDIuZAB5vvqXUYLAOWtdMs2h3a8UFIypr8h0=;
	h=To:Subject:From:Message-Id:Date; b=MKWBGOeJ1m4JlCLSm7jqtDXGCQoNVRSU06C31+RUM/UhYj6c8QV7xRKqx+L9g7WXUOvw9xV7UXqlgdlzT2EuW7Q1/2yMluc4TPONL/mopuR1zhLOvzfCffm/ybe3KBdEKxvUCkwFAHBH7/lLpQ5hbP38EOs2U3G167Yhtfp4FR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiEkyIG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiEkyIG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B473FC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735770953;
	bh=h7peplsxDIuZAB5vvqXUYLAOWtdMs2h3a8UFIypr8h0=;
	h=To:Subject:From:Date:From;
	b=OiEkyIG//vpcwO5bQ3dTt9iGo7MG3yL3mAi0Gh67mIuuJnmroYssx8F0y4aENtU3J
	 YzN2XnJrqKlySyVruCiT4sdjX4JtcBRrCsEpxTQvQpZGcL28egkTruN/vRgCDFdspW
	 iC4TOdDjmgrVUoU6yT3IRN7UOZ+ApSaKfBBk88Oh1RIlOafu4dExgC/4fCX9Hgzpt5
	 V9b+KNx31eb+B9r7CLj+cZZFr3pw+GZNnREQSizOX7IhTN3L/SymG3GFZ+5Vq6ttG2
	 5DrWEtSOnE/o025XbZv00mtpP3KPMCXEOd+y2RTpifXz1sOkY5Hq/+Sobis6mIurE5
	 IMlR5/TZbthSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7EEE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577095361.13786.13790343251563789694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100288e373b7cf683cdf01fbd9200e03c386e135c80d22d650efd18a892eb7ff
Date: Wed, 01 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735770953
