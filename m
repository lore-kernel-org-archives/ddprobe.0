Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AC6362
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71181C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668069054;
	bh=JVY7+E7rmeXbV2j3eZib3tLJALoO6qxfbFvJWC8Ionw=;
	h=To:Subject:From:Date:From;
	b=c8wpy7JhaXI3xKVjdJNO4DH+6TB8iVgwtR+OGp9BhHiDuo52bLUBNmzcpDNneYw7k
	 zpmAKczq9a5ONllBfvJl7jzRuOk+4ceqhXVqMN+IdivNcu/+xYVffrQBjsFzANJibB
	 DDxZ3bAlDobmA/CRTlnXgmS2GeOhPPk1XiqhDA1jJ/IlUBK8VIgmW4O/JTyn8oCTB2
	 US8jzH9RwCpB+wIQKorzt/Jg/SZKi0a8aTwLJNNm1g+qI8dsXHM8+kT0vqxidyPkZj
	 RLgiKh4KFsiEdfvVeJ5cG8B/x6NfzY2Iv3ah9Ah6DTqzfDDxWP02FIHLIGu2pI1ENE
	 2Zffy8mtFsEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59191C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806905435.28788.170193657316612026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67c4cd437f9ccb7c9de0eed77e4ac9594e6b6985ee92f98b4da46f4b79edcf4
Date: Thu, 10 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668069054
