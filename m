Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D11634
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 01:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF24DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691629989;
	bh=BYZugmN7XSMHr+Kaf3tIgJBrA0Lsfixdr2kBf1un2WY=;
	h=To:Subject:From:Date:From;
	b=q3bNlHf33mnX2WAycBObx00oi7yfObuJQoGPmjy0dczkAWpUYID7WREPC+7cpOZ1I
	 iVs1ST6Vq1RHsgR84l5pTPw4mEF6A1q/4CSYcAItAJE8oJwkkI7eg29OFSJ6r5jROK
	 zmHflEf2rTdfBtDAlzG/zCueFeAIzR4mJG3oi5CVZDsGB5Fscq/m+5oAkZ9DKT+xea
	 Dar50Aog+OPLSBm080nuEM04dFoMPpA8fIKuye4w/ASXvXJYGR6jdgMqr0zZmwmqRy
	 S2sViz7CWXgOhHWtINUj+JFOjs8EWAEC2OjaogDdInPS4jW+d0OiI4fkNOCJdQ+LzP
	 wWOoF8Z/Q1blA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C6BC001E0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169162998879.3424.5127409544366029892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819f41dbb4be09223e8ecebf35168f5161027fdef7397b1e83ac1148375c02b0
Date: Thu, 10 Aug 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691629988
