Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1402F46
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728FBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859653;
	bh=t6tBl0pvzxjsNlcW7E0eBGIdGX8xNs9H4CL5N8+df3Y=;
	h=To:Subject:From:Date:From;
	b=FkPbyNUZYTxDuqBCzO437o8/hBB+Y3FVC91AGkVnUitvI/UuxGl1cNR9RUP/zGlyo
	 DQWS6ec9VXLA+vvzq6NWSPIPu7R65CslEjJksVsnxd4ts+VH4SrBiO+qN7+dOxhorD
	 Oth9H7nCVXiSmIJt8OpoB8yoAxyMTWcIkJmB0jY9C8+aYYPQtH761zA9BeORy9/rCX
	 p9kQiK4MBOLbj+1liOx6G8LIcd9dr0CRLs1NOoBUGmd1eOSMWpxZjNowyKPrgGTCee
	 SRouVjxB3JMcNKwsWK9wo4Va+KQaWxHxl5mzfsocIRNRCIu3eOcE1YWmgEMv3XtzDh
	 LcADigx3BwpJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4C0ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185965336.28921.5902375859415711216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94768fa9ee636154d6a671da7ea1d5eb0070ee3fc9416784352ec95a3f18ddb
Date: Tue, 30 Aug 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661859653
