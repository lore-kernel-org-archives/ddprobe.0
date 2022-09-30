Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52C14C6C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E48C43144
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664550053;
	bh=6b+k+tfPBGOdEecCDk63JbbMnpqKmszxQYrzI7ZUYCQ=;
	h=To:Subject:From:Date:From;
	b=CkVOcPx9xOGHWZ/puNNxZrZHlEE/iNmmVpr/s03TEPW87Ah7J63UvYO9t/7jC3NHM
	 hZ6D2ynkbhVywxnVwRD4tBm7cOBwdI3F5sL6rbaRGyl8P06AfyHMhM6pMdlvP/Cdef
	 V0kKsz2mt9WtnnfLaB4ypNS+FOT0Led4+W9rKR7sHD5OGI5cvPDCP1BVEnLQp62D5S
	 zUh4yxdS8wbdYqaxCNtyPmPlIThOKGQNyW9eZatXRHKaKHm8v8yrkSXBiTiZ6ymzHy
	 Nz/YwvwTZkMTyGjZKLqEqnJZIw21jycNklKSorvWAkOYZ9TdRq7dSzm8k7YHrhIUzh
	 sA1+mx43dSHtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53784C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455005333.12390.9750757165051782752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f1220031decedaa88bbce35dd46531ab395bd1ece50e4613698691497c5da9
Date: Fri, 30 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664550053
