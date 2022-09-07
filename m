Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF04539F
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CBEC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662551453;
	bh=o3DcbhYnu+VZ52BFqiHaENifgEH0339sY2X2njbMcyU=;
	h=To:Subject:From:Date:From;
	b=q2Oazx3puIfgtOvY16Kiii/T/YUu2RLvu2RQZg36HiLgpe81e3lJ9MxcIWGHB1HN5
	 GXQVDf80jLG0VZCp1AuWBQKjXl42erGyb9k3jGkV65IX/pap3oLmu7IzBjGG39dBuh
	 0K9pLsuwG3fY7CrVGKmzN7u3GhprWgR/c2TTVeucMPzrLMsgO9daGM7T1qvwTsUYyo
	 EReHf8aY4BfmU2vFrfP62Zy8t9aWL4w66h8b60ozYZtgOE0XpJyplM0KaERff8U61M
	 4SG03p6rbavJjTHJLjFXbNGdNEKfs1+PXahRz+hwJ5s1OvU0KHEJ499LgZvcQ5j5co
	 siPjkoaVF9ajQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59348C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255145335.13164.6642043969866719879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd41d467954d1dbd060f09d278def185cee61fd0792737e803deffb45ad5154
Date: Wed, 07 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662551453
