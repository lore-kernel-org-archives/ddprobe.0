Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4E38F64
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F05C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665565253;
	bh=Dqw2Dk4lPuOgCwWDdA5B+BzsiFGnd0NRdohOTfz0KYY=;
	h=To:Subject:From:Date:From;
	b=J0YemPjd5mfLY+ikFw4vzHmhDFOgzUED46h+ZkIENrSXuSKPAbmxDVRqRcMDrZ7nu
	 wZ7yG3+5ph8OLUleO7EsZ+55QOYqJOHOj+JrCf8eY7oK6+B7VNHl8E5r6cBVInlxrJ
	 Z/tLhmrS7SLC7KqF4IL2fMCGAzrCuLvqqWlkhnsTb0DlkAjgefD8AV4hVrz88Lfjd7
	 Io21Ww/YAqLIlgxYRSFQyMNFfpliULpFeRqSyECYSTDWtPWiK3kitVwGlNUML9Lf/D
	 wdO1NcSK8SFuliw6kuxP2750fbmyxPiRJhBSYXk7Juqbv5lJ27ySzVhhOOt6pqUf9f
	 w0DexiRLDU6bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EDFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556525335.6242.17515112051563550605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c96eec9230ccc6fdb01cfe37ef359bbd1a42d5a3013149fe857bc75140a4d5
Date: Wed, 12 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665565253
