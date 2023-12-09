Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058EC1804D
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zt13HkEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D32C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702145296;
	bh=H3I5ruxQ9882dKvePXRfTJKtubgasYqMpqnoHkGUuew=;
	h=To:Subject:From:Date:From;
	b=Zt13HkEweHipBe2GdBD4aohLSxGSFs18dtlQW1CHS1cHy1wFNGBbPVCUDAVYuX/5s
	 2oBqQCnwoDzr/3pHp9J5fEAcQqs0ehr6R/fP4gUzL20/U22JTOxviqIUxv22ISFI/E
	 AERSyuhCPj+6twpaj1mZtN1yr76D0N2h9i4vibiHN5ufD8CFePc+zs/2OzwrVa3Uic
	 6DtCW5sScUYiFdq5+3R4o3ITGJj6xk8KJ2iTCMz3vuVjfrnSoBo18dCH84+jIY0NMZ
	 QMy20R3C6KLWOZuQL0dnh5+1GdJAMSlfTRKKdQYsJxcDfKQvcAnyTocQnUzOaArR+X
	 jWecBfMwJvgSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCC3C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170214529636.4806.697723172019504714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7a22f84b6a13d2b359a5fbe5e404cab8a234c17481611f8ba58ecf1c1064da
Date: Sat, 09 Dec 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702145296
