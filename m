Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F96A7FA
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB914C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689409869;
	bh=eP+K1ozObCMQNEPnX16FARJ5peiRsY3y291VbpfLs78=;
	h=To:Subject:From:Date:From;
	b=TbZtLAiw/t/x8CFMuKIYzHwpxb60vM4Ie4tpDlPfy7+hwUwWLVLC/Ye+8cDxK9reE
	 K4zGUy1NNIenc0hrBM6sJqoxIntKs3GkdklIJz9Kx3KpWNu/g0FC4nR+D0s5n0YiHu
	 ZoXFvumSAMVXF6737PzbYROkCt3tzS9J/z8P7fuPBGmLfZGMNNgu3tSNqoAR7OJOKf
	 AXht8LEuZE833TxJhoBC4goS5lLUgeyMkEhsqlfAX3ofLIPi3KQucb0dWTxsy8AfY+
	 CSrt5Nafs84GDVpmZcAwPHiRxtG3WNETOAUtHXNFfhpVhkYr6S7mvKIgP+BKbhBKyp
	 J0HzjSCVvle9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9255EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 08:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168940986875.24567.18377103625797024778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145a0809b633488893a3008f1aa314949b6c25bd415255d7afa5ca7ed261c683
Date: Sat, 15 Jul 2023 08:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689409868
