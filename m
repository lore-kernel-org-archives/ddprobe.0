Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84D128F1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB17C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664878853;
	bh=+kyrNlPXX8rH0SqkaEf2iGy4f5lkobGyQV9DtYDz3nU=;
	h=To:Subject:From:Date:From;
	b=cMARfAhTL7ezOxoAD30uRe+CakF2d2wwBbjKkCW/t/BuQ+DVpSxC6vRVSgApkDmFd
	 ayH+4X00/4vTVhK+li5kA8umPo4NasowMy87nlv7orwe+oGkpjJDz17oCKXycdDbvF
	 lw49PiKA39omkrTS9jQ/ZsdaQd2n+3i3RtSmH9/S+3CBU0xMqaOJftogDmXtf/l5bJ
	 CFiRD28cTBqWd0CL9qyMvOylUcOh0xEWEtOCHdPpWQyYqc6L9nnmpXMcC0aAXseSy+
	 IZe+ee82zmjcJiCT5VjQeG1F8QOfxVKDxXk0DYxSq4sp2yvuK4wDLShQRj45QKYN+V
	 qks0nsIFZk2og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55068C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487885334.13968.202269246140342243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd222556b5c60cb5c4ef9e0e3695d6456ebad1ce5dd07fb1cbfaf9e376019cf
Date: Tue, 04 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664878853
