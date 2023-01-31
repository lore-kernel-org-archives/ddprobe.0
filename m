Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF456ADE
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 12:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2B1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 12:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675169585;
	bh=rr+h78xKEAqOkqVa5OoPG3Doi2bPPYaEQkZNyJM+LuU=;
	h=To:Subject:From:Date:From;
	b=Mj0T6ltCkWCBDp302Uq2RXY8xIqtNO4Nl3U8lYF9+2BjW+N6INB+6kJf5+ogxe2Ru
	 SmuzXyNWZZKLEaKVU71mvTe2hq7tYoLoIKWIhGwL+Gnr06BFfTbei7wdpRUMraiaLv
	 OJQrW0IyH8uoVowv1lvcMvOxcUOqLOa4OeVWc60vsycg/7cObtM7Lj+RBQrgMkqJpf
	 JhA43AwcjxCIYs3SFoGH3MU5lIfoG/UTNATa726XOBpkkBYXX8/8MV8eRhkHGp+AwE
	 uCfNxl8h4sdBCZ1BKTGtrsFeaw+FQu7L4cIn8U+6EpnkMV9trAWu31d3lclHFuvl8j
	 O1kXyNiWNx29w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F7C636CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 12:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167516958578.30132.7016874670732028545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586ef4ef6569cbaccf0c11bb68ef9c7a7c9e17730832e319d047c3b14bb1a17a
Date: Tue, 31 Jan 2023 12:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675169585
