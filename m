Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BB61FDA8D
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744917594; cv=none; b=adX6bHqr8XQZO/ORHgufy+N+zXK8Hla+KmScPbN4OJkSR0ubqBHpPWx0athgbfMu5go684YBtA5y9H8ns9wEYYZEugrns6oMqgMlOb9VoePKj5JCjmztBPgzNTkLtVqM4fIHnpPQQrmsxCqATg6AT8YS1SsrrXt0m/lSrm26xmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744917594; c=relaxed/simple;
	bh=ANGBjLj9UPzvkBw33u0aof9QcI5tlpSqAIWtOLDAC+8=;
	h=To:Subject:From:Message-Id:Date; b=BGhJW7+ZPpKWV+6+YyqBNDzGJAXjg/hGNoLcT5VGp7bKbS0gCAX5Jos3Dz6rWyCGAzZNy7VcxGBv4dG/OmeZrRB/rUWpikH45GopmY9BQTz/aGkoGL1U405NXSFklxFe3qfhwUchhPh0zfpA0tAYq5789bHxGXMRmblhfPTjhBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1ZUbsz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1ZUbsz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5425C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744917593;
	bh=ANGBjLj9UPzvkBw33u0aof9QcI5tlpSqAIWtOLDAC+8=;
	h=To:Subject:From:Date:From;
	b=N1ZUbsz+8C/i2CyS2u+cGwI8AtNv/f6lvZVEAQMa8eaOUUrG+NMcxprIqIcew/LpR
	 WjVWvNa7XslW2Q7SbURJDxH8WKV2hXscOOpzMYwTbWDjhDY4+jDHQRMRgsPxjk2Y6C
	 cvH5ojL9LSHCHtVP6GJkYw3PmGjy3jDy/MqIt6jMZoR4xDc8oxaEMYuhvwJM2dttmb
	 pTyZIj3tHuHlGmZiJ1+Prvp0egaA5xeA9I3/ucTz1OFyldErM6FbKsR/aReIqiEoeZ
	 /TQeVj7IDv98TaqewZshbgSGQFFZI3OCwDPA68PW/6ERKh3Q98q9horYg19CL4HGlg
	 /Pz5p7XTo94mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1A9C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491759360.10872.8093636967683195785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0077ed29d3c17e1fe3a60066eea10421b383005effa5a92c5403ba77209818d9
Date: Thu, 17 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744917593
