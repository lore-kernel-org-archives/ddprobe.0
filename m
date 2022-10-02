Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA4A3C2A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BA0C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664729453;
	bh=b539+AGoOuHsscPQj34oU8mfeATW2hSXqvb1Kmvno8g=;
	h=To:Subject:From:Date:From;
	b=XLH5AdKpmdX4GcB6IwQoZUIAHSZlEYRwYb7KvWWNNfXjhTwSp5xXASJl26Q7KiKhm
	 pEzvHBG/gKIc/vGFaOl37hhU0RaBDJ1Yp+JYu2NcAkFDIS/hczGZZVE9TOOyFe6TrB
	 eo3cRUC/fpXpBg5fOVe+gfhaHZsR7vKlEZC+pQuy5LKMDh1Ad/QarRhMaQLQK5iFNV
	 40Cun8AOd6Nk0p/RU5VNCf1ETS7gPT4uCvgzSe6LMI+lGQXOp3JdUdArJFXtk8ZJaP
	 sS6BzA1YN9ICjq00uRUTWMoTNG77CpAFJLnI9Clowlle7XZZI1HoVxDwyzW4OehMxi
	 Uwmgqr9QehRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5728CC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472945333.32448.5711813618427826106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07f28f4e5d2b70c609eb68742efb3c3240732dddebf9ed6ddfabb654e8d39cd
Date: Sun, 02 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664729453
