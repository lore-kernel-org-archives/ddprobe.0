Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78221361
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A81C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670344254;
	bh=0zStLBHlZSJkfUC4mJmQ43IUnp+WRawLUlW3xU9RQrs=;
	h=To:Subject:From:Date:From;
	b=ebOrFge8oQDyMo95wr6Wn67PEcDSQ4XyqKLdRgtdj8Nv7WMOn2d6vsYY2eH17Bmbw
	 Ao0oOYbr1AkjEZwjN5zn7wHCUiF6HH+1PaOfZEx4vr3Gd6qi1x4i15TIYvISxKgmJ9
	 bl4s0EV/EuceSmk4rLe6CMnRihLARmW5DpxTFYxaOgC/vrBmKrvKiwOwyGkKz2wLq0
	 thZZpHTTbd/4zID+QgheIiTJSt6fB+iVEe13qIuL98BS3btTu8lbmYBbNg/A6N4IJS
	 mny/OuVhqZM6O4kIUBTHqCoAbhRa81o0nJc67MI14+X+t1KEwPWDFWQdVlGJyHEKBU
	 YH2oY/Kd0WhEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55564C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034425434.17600.13454016434630967936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e96f986b91df1779d89fce3366b93909e39755881821b39e12a91f1c7e23357
Date: Tue, 06 Dec 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670344254
