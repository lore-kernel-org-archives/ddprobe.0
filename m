Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7C27F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684F2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662963653;
	bh=qkk7hfeQUfaekETu8TQMRf5bZYZQaiIchXVwEwj88ns=;
	h=To:Subject:From:Date:From;
	b=C5uklkTBhGPcWR/4Xjy5nnJ5UsH1X8ehD7Kv6oQ/siGM/Tum1CZbse3y3I6TTsDbA
	 aNtzxj3UgWbrsGx7Q3aJVrnMSZc7pcXc4guOzuJaU7Wc3Ab+n29A3/n+eGmkvR5Xah
	 QWUaGpXDRdLUI44JipQpb5X+lzblxVIQmczZYS5fg07f9KXGTAmb9aoB2wUE7oAdSx
	 lZwtgDls9T3Amp4oueJvOTuKn3vyW9ZFo5sTIifAjzzdcxX5f+kzVzw0LY4fs1EMkf
	 A+RfHglATQXlP66LmV3EyVhhqaadOlk+WKvk5g75bqyiOhlo3taEo5MKH8DvHjd7in
	 c1ZzqAuYEeb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF36ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296365332.25551.1031947819592520716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8fcedcec425241df59543ab8642d42e8030d5f9fbdb75e8a4d05a1e266f88f6
Date: Mon, 12 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662963653
