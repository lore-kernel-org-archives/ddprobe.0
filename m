Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6F32C687
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZa9xNv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711CBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702666696;
	bh=1qAFLt30YpzoeTkpls7pf6Z7g1ADOd+78VAEFYCA6iw=;
	h=To:Subject:From:Date:From;
	b=aZa9xNv/YSngbioULjRcoYPJoDdiivJG2JKrQTe4iCQyg1i31AvDW7rkk/CWh1k77
	 dDNwWFOUvzjG1DLHR0641aCWZ8gaJ9GjrJ+fka5JJieQyy3WbIC0YLbL3SiUE2SabA
	 KfFD9aSYpIZVAF33UA3PusQmOxa1/4OHjtwFnm0gvBjDlNJ6bqG3fxfPcJeQ4Qc2PP
	 RUUU0iAX7SzTbB3vqVcqK3c2+GEUagcysl/m/ytQ9RGht7cP/RMGrU7VFZvrG7OO9H
	 8F9beueNl8aepgOtk5rGndSSGmBapxDjq3nfxyoVnavFoTt+pw11CWg6dsW7gLqNYv
	 5rO0Zf4Futfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C664C4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170266669637.31417.15053201516534990213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75938477de167c9a448613ceef02952f50b68cd266cf376303c085ea035b6e9
Date: Fri, 15 Dec 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702666696
