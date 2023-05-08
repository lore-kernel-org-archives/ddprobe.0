Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6E9125C5
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 05:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8586C433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 05:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683523685;
	bh=9wuZuj3RMW/xL9FezCrFVquXkiKkfRRnngmH3Xn9rVs=;
	h=To:Subject:From:Date:From;
	b=KLjoYYU3WtFXoKf3UG3LIr5ivbRz6owalSnNBNPj3McUZRtLpRcfztbm3cwKfvOpe
	 VyBtj3rDBx4FMOllgHt6woHxBqJ8E6AAG326XcO/AAxkFvps+Qw7LJmXs/ofVTR5YR
	 UK6Gm0PpgFUQ3HAk1I0KiftWBueQuAY4+FXMkaiIuTlFW2+cMvf/pTrcmiMhLHpgIa
	 pQobS75FooCSBrDrCvZw3kv8eS9YYn6PEiUe1t5MSVK0wUd/k/Yk//RO0a0K0rHhTi
	 k9L/YxIKSSvG2/TliJ18H/pleuL+aMPaRG+vQh5yR+dNq9g8SaDfQeFSAJVw/5O6r+
	 R+Ks7hIcmAlVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4C9C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 05:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168352368577.28055.232153281637340108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14558759eb73a69ff111ee3583bdf06be5cdace9efe62a8892982093a1f6e20b
Date: Mon, 08 May 2023 05:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683523685
