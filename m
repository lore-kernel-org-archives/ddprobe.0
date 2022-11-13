Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DE46FC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C48AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668367854;
	bh=tpH0lerwptGL6bcIVK5tzb1WP53idu6blx5Ew6HbDFE=;
	h=To:Subject:From:Date:From;
	b=Yu6NG4RzMbW4a6HjxfdinbEhZW+pYg35+x77LBiE1ZNJnNUwqQweOI2TEd9aRVxGl
	 uPo4d5W1Yp6z3n+pT6TgbNTmY6GuwhbpzpfiHQ1vlc5RKUZccRRcQVa5ZirVDQBTyN
	 bdepNby/pF8BlriYf9j0DXmYUdlDz7hpXKhw/5Z7ADiQRokjGB1Iqg01nzXDYfayc3
	 7AKuHT5rJHvxwGOlLVnk4M1kOmb+OVx7ou19tllWwfFUs3cftZpe+ug083PYKDznzI
	 uUk9cf24eVVFP7JCiYLbbn63GDX2mBxLV+O1AY6gnSAhua0+h4e5BTN5pHytDmVrME
	 UKBSj9IeKhNdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EB1C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836785432.8822.7858680651781959982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb250474ee592ccb3550728f80dddd7ad6dbde348625e0629f3305109bb50317
Date: Sun, 13 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668367854
