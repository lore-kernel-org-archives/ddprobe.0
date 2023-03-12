Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D294C97
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC1DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678638425;
	bh=ASpRnyCKF7bynvCRWpKPcgG/hYNwCuHR0ugB0z7XZFA=;
	h=To:Subject:From:Date:From;
	b=R/M76fyvH0JfMZvlzMnyH+CjP/K3zRcaVOkCGVq6DvnnTll0Ywhf9bZX7kjJwgmAq
	 TwtcSItv3ZK4ke44rRhz65IXCeWtqoV5Gfsddd4DQW3dzHIWTnhzscU2rmwNOKQZD+
	 8wxMN7yvkIxFR7lFRHanVAn/TC8WiRtS5mHqoxYJMU5Vq2Dzw0UZ/rCrpq7SEOclZt
	 M/LJMtNNP0uD3DWs4h6CzLmQRYUmz5eymK2hu90Gund/ctLGBZwNbBuqj7GJRvU5oH
	 LXiOzpAKddkAmHONgDJSMYZuaMKKAdWUXFEMhu89y50J5dkR9EdzEFniQ+W8uht4KO
	 k5ur1d+t4Fj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3590C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 16:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167863842576.20364.4974650703018829757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782b82acd6c3d9a1470498eafaa5d703cb05285ae916811c789d06b2b7e9bfc6
Date: Sun, 12 Mar 2023 16:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678638425
