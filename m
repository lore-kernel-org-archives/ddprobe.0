Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA73853B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77568C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664481653;
	bh=8hdaDKRdNSJfFXwlkL70mQEUz28RjJTwcmBCodVCcdw=;
	h=To:Subject:From:Date:From;
	b=je915bV5kQF5/9sETPb3vSgIZFEEc9WdQ3/J3Gbpx9/mjuocGpfXwIMAJbt+Pqxd1
	 pFEPvHeRG9zhcnDGaRJDEl5XlGMznicvBNkeASJahmXQ1jhCiyasG8LrXZrTlo5IY5
	 vr6ZP3gl+SgBWY0KxkxNxtGMi5B8a8mmaOCepl99hIvrZLhkRNL7ZMItg3p/91Z0tB
	 wA/Z4LgT3hiFND9i0KA9wgk2yJycRl+HacaNZrHC+SSNRkAZrJomx7O23lV1UTCeS5
	 xnAtSVtEoDJqOxugLHSC9RSnRCsLIGk0Rw71AFphF6VW74zvmvcDlG9EwFV6AV+1aK
	 NHYN0jBbv0pfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BE7C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448165333.23323.14319209363314248429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1fb8994f8fd30166ed3d17e68a3c83c58f4ec0e1f761b22b0e1ebbc1b3e73a
Date: Thu, 29 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664481653
