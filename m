Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359C236B
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 05:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8A2C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 05:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683004445;
	bh=DM/Di6fqiD6v94J9BV6LiavFHclxQr7do6eYfl41Ots=;
	h=To:Subject:From:Date:From;
	b=C70bAfXLmXnxn3cpTcvuLweabHHSeDt3x6mdUytORMm424kALv0KY2oPOJbNILzML
	 U8w0fwpWKHSUfZWndjKeujiAegDOLXv0Q5rX/1GIwzF3fol9kbItWUEDoCEwnSZWKm
	 tnfktnSBkJHavOABinKqSmp+uOTXTtK92vgjQLvyyoizWJCb2wV0dAj2KROA4w38P5
	 VfXS5uR+zkwtu0cxAxzNg8zU/zuMaSFrlDLL1dHXwirK0O3oW0HOoRXCTSk9tKfb5j
	 xNm1FDWZD7LUw4U6lSSP6UesUFCZE1fuiwUTs6VtTU/sGjwbKp+pOla9bg5mwOWI3g
	 WAC3sYlcEQYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8249C77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 05:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168300444574.2491.12493698201121264749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4debf50c877e6b8ec2b89ccfd3a4c510ed419220cbaf7f5ddefa8a57092ae7fc
Date: Tue, 02 May 2023 05:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683004445
