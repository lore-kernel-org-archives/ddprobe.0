Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8647F1F169
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7918C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685977205;
	bh=DYqO19+o1XxqsB8W7Ctd2j1WTx0OwL4H1+REmcyjO8o=;
	h=To:Subject:From:Date:From;
	b=AMXaPHA7HV8SIDGnyZ/pO08Md/hEv3qwQMUiERtRNo4KqQDkiCj9CXEeZMCbmC+fG
	 D+D2K+gdMNle/J2WJcCAcAKfX9iqVD3MGvX9hhdgOjrQCfjh2Cvn9mSfgLo8hf3J1Z
	 q0cTWzL82VgdgfbVRG/RDTiIlfwjaqUi/fLoU/NXlYp8yMXvNOaYHkV9UG6hOgjSGO
	 cvZ2S8Iyyk4i666yC2Rt1UDZyNhjwEckEjkWc9FbZq9q3DMR7bduY5KHhJs1XC/Udt
	 ojJ/Vb6ixx25NNLnOj/TGEvj+kmxSbW7k2ZBVaAqWDOizcnixs49IOQ3X04KRg8J2o
	 eHQwhGnmXu2pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EDBC77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168597720578.15829.16980390782377690923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb3c0d158ee95aeb235da92045317763ed0fc88c7308ab35b139b34fb0d6520
Date: Mon, 05 Jun 2023 15:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685977205
