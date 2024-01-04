Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217D415485
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBurqAhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99EB3C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704336496;
	bh=ypdydNH/SuG+CgqAVboVpHxakDnk2xNc+3pamFTTOv8=;
	h=To:Subject:From:Date:From;
	b=KBurqAheYjSvav9hqMvBSEHrrxQEr1cCLsU4bnMHiTzrp8Na1PyOAhclqytjuLamc
	 9fQ/rJv4dLnyr9FOWxqYVLlKI1rZ7ndhJMwb2blCH7Cl41qoV5huFtl6d6EzUIQhU9
	 4pzWub5SGqOXt1W9stoKi6rrK5SglEXMbACQL9HHUfJX4b/Hyoe+zGHoXmO0rZ+ziC
	 5V7vTFTI/1YvpG0oPn03piyBdecTYieNK7ez/WI8EGk9LstY9XeP7RE6p3FzVQRtkF
	 qNg+dxcZWUU4OzimK0NdWqwVDeZY6BOKzeG5Daiua2ZOMp28eGEoicZAHhLqSoCgLT
	 tFRFTKoFpZpYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A955C3DA6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170433649645.17214.2740024137342711367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec5dea200eccfbd73b25df3c3c3fabd15dd2f87f4c1769ed111c44f4cefbcad
Date: Thu, 04 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704336496
