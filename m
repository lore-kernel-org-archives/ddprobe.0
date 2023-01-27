Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420C23C35
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4200C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674848585;
	bh=IDksS4C7Tksfjbeo98lbdzwUSQCIs2YFLXEih9+rasc=;
	h=To:Subject:From:Date:From;
	b=L9rry6kyKPaDxds7HfTyWWCDq29IEyMsPyGOsjij0YfwZI4Vrx2dP4JxsX1rxmO7y
	 +D6z+TF0q1sgH5b7RYK5gUBtCxUm3tfi+5oe+ZkF3gyPvccp82dZd7xTdb1C6Ho5ql
	 6+jGbePXt0GBTDfiliLLmlfZ0v/LmiGWS3S9yr7GaMkZinOJhj43YMl3d6ey7Em1+B
	 KGocc9krIim/0rSby/I0v/hLJUmnsri3M6KThMF1N8HVKWBG+W6mjKDjCMTwWNoF20
	 YL6bcuWAcP6ErKpfQTu/iGRaNDFOhLHuOcDb6kxNsaMeopDDza0asDPWUDeoW9H5na
	 ELxkmYvD7qicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AE1C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484858577.22388.1245885498621016898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fae7dccc88783de2e3354a97a23d48fe3c075cd7fe78573bc2e2c9613f13604
Date: Fri, 27 Jan 2023 19:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674848585
