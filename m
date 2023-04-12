Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB50362
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA356C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681269726;
	bh=Bb2NtX/tMF241LLFW72uu+sFDSKWa9nCmpm1nIFlWCE=;
	h=To:Subject:From:Date:From;
	b=EmUAb5Gh8I9o/ptHEwFRQL8tZKLPcuhXXOSZbmAYcBjRriQFd081TZ4q3Knhe6GGq
	 Xn54J/aEdUoI9989fCc62TMFSL71wbPg0px4ickCsM9SJRjOUTcaEYHkJE5LEJ9p+I
	 zZOvO7cZue6yQiEetfpv9mgWt7TXFl9IU/4a7J5D/ePBDf0KMGlh4+B/QNBA5+E9wm
	 xNv1YAMqW5UkqT9b1v8AjEQ1paWmQCMYDcrXB6HbxDSuYaW9ajQFAi/XnfAK8yCTt2
	 HiB1DwsZeCRvIrGNFh7k3Iyc3YhMt3NuS/c/AfwSwBB2bt4Ll5YgQcjuaD0EwjjhsH
	 F1Wrh1V/hlhZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B8EC7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168126972578.26230.1048239606164421667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ff8685e057f23c5e053a83b28900661593ebfc2be94aed6616545a103c7e89
Date: Wed, 12 Apr 2023 03:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681269725
