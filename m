Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5250A6AA8
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B03C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683734465;
	bh=6srqYDgf2gnxhgBTbbcaOd7Om1Quwx/zk8o6kSmH10k=;
	h=To:Subject:From:Date:From;
	b=X4Qbe3p361uaruGBvDYrsqmHOuS+IoyxAB6Ng6q5JSabVXXv73gXo3ZlCPQSg5vSu
	 gPfCQSdWcHEK0ocTBSxcnO9R0Ti5BsAZpsalNodKuxM8AfbprO7lc1yrJXTNQ2GmSF
	 /urvQEoIDX2fwmKg7EEoXKupCNQaacFKWvWZjdScWQPAGXWvDFHoPpekA7wJpyELQo
	 cjmX2tQEU56XblBf5ieFULnO9T5+EpLy73OMuwUyjmaOvpDL0n89yIjh5iTnDoO5C8
	 kmhPoyjp0MKGIAjddVkqxFsdnSN3AFtBem64r6C0pP53tZcPS4KK0PqPZ7sg/UGHtT
	 LbiJTOvWZSWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43ABC77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 16:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168373446578.29609.16497321263672439241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726c0d9192391abceac3ae3fbd01e5df407fac564a000f1a4b7c785cb6db038d
Date: Wed, 10 May 2023 16:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683734465
