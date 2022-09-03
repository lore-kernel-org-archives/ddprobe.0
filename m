Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC167B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7FAC433B5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662163853;
	bh=KCLTzjwDfT7BW4FOLFDbtqHjwzBer0idPH/Au+qmAw0=;
	h=To:Subject:From:Date:From;
	b=m8TFHA+bimHyDlH86BlR6fFIgbILxxkqzngWG3kaZ2x4mGAG0k624n5iygp2nyZ0b
	 jRIE7PKWzF8tkcD9ez5v3YHJHvSE5jey1FhuUHhsaSxVUxZifv3VIKVg++Uz7OFbsL
	 aQ+UJVqXB5gghL9FAR3PfJi9L6Zr2snGz2FhtuwfBZxkxalhk2k+CniPbIoF9+4yjJ
	 wi0jgLiL7oHnUKIF8NPBemqgh/11varNugCUdIFEt+QY+i/BEoEjbY8yxochZGQy4y
	 wyL1RrgBY50uTY3o0kE2e9bdNMoyd3ClQRg4uI6Y2DiQGFSrwjbd5Wcu69aIP9EmPN
	 p1eln4URc5rwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C83ECAAA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166216385333.15617.775983930123833888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f002290fc579fa728e2cc767a096d4aa6c42198d737c8e98641c961898369cd2
Date: Sat, 03 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662163853
