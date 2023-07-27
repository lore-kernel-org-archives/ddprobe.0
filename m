Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC0D7C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 01:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C840CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 01:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690420328;
	bh=+tQ98rs9OEeTphF0ShEDKBNY6qdLnplevZdK8uM5JwQ=;
	h=To:Subject:From:Date:From;
	b=LOrrjVrK7fOZ8BT+WMA4DnhRcDhmduecyUeiwEkprrTNPRzh6iRFSjVjkYw1JsMEu
	 VeSMzCRxhreso/k1XKYL/rAhCo45dCI8OLh/AAVqy3drU4Q7fzQbzl7wJIit0NNW1L
	 i3guwN76tvbHVCcTzke2rQzow5tH70QvdfP4P+EIxzsIxqfZPcaejnfXGB5AymFLqL
	 NTsMgYhlCJv7s4rYfTloGy6KRk0J+HMnj4igxtMZPOitBMxY+dQK4zT4eaU+gyaIln
	 CVUr/VetejwK8jhOfSdMbgNp2RHAlBVlNBdzxVzdu2SUXKszSv7nZyR0DlRlFFmosF
	 PcgH//gywAwTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A1C0015E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 01:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169042032869.341.5946031970059483906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab99743ba10d5dbf8a0d851b5ea1dbfcb9d7fb01323af2825541d8ffd08dea3
Date: Thu, 27 Jul 2023 01:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690420328
