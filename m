Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6084C72
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73577C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666116053;
	bh=+nAH1hdYEMNkC3NwJnv4TkUX7w1Q+LspzHEr6Db6Xhw=;
	h=To:Subject:From:Date:From;
	b=SOR9gjX8N9qxoh2XMzpIn4uKGG9xmlvQOlSGcdvaLoOHQxn8iUVLs46McV+Tbjpo7
	 3i6WU2RWxHl7KhLNxlzNt4y+Yx8dvNqDBwVzvwgTI5Ce+cHeQwOMdpjhmkQciFYWlM
	 iL7X72GPFXl0uUJkvX2bA8Sk3rHYvmOEH/HMn3CFdtQyr9Mn83ouos+fhb7u78ESOJ
	 lL76iCMaKKtiChFrzomNJ81J9HBWJw+DDKC75S0p9IbhKs/mFOEqKhm9+unEQ7gDy5
	 /LLn876GEDmLar9ZqC9seWWev1i1ciNd5NsOWOnj0nN1hycnxRAMG7tto/92dtQ/s/
	 KGOBRmXHPERew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52599C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166611605332.10857.6063633435456082835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c30995c82aacdf16ea3fcce22a3f2cd0198ca506b6006a5c9b17b12cab6d24
Date: Tue, 18 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666116053
