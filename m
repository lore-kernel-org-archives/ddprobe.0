Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E865ED5
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DE1C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692678848;
	bh=52ZYlLcI2cjoEzB7QnBn46srSkXbQB0vAifGFiwSP1c=;
	h=To:Subject:From:Date:From;
	b=Cu60wOzx5uL+PYpZB0EmR+9NQbOIszohmim8ixU5XhZIayFqsnzO/HBV70kaYuOqI
	 Q1YyJwrO0PeqDWrsoKjACgmB50BltMdzaFvs+7a4NfD9TvyhZN4LtN9WTlaxpk30kj
	 iykZi1ONxAG4TtJFI8MOrr3ENvOZDlDIHOr4Mdoa/wu/06vrAOkP44CsiJ/j9mhCWG
	 eGlimYoZuJ+egSFNb0Yuk7yp19NRNGkNr41KsahPn1AWfghx5u04/KG5pnhtSYN4lv
	 06CwdKj85X6Co+6eaK08JuKH6+WpO6d2KbZa0A+D8qbji6aJ95yTEeGs9Kf//Fxrjj
	 TWqf1hsdGw9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E41EE49A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169267884867.9985.15687160525501164640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f74f0c053b60106336a458b426416efab7dd05f8678f7d5a26415655995185
Date: Tue, 22 Aug 2023 04:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692678848
