Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70F97C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EA4C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672561887;
	bh=4Dl+LxvjJw9sdrclXbYF2jsEieXrX9xdtUOi4WMjIGY=;
	h=To:Subject:From:Date:From;
	b=NzYfkqakITkZsk2fzXYv3ZnZb1GzIWUWowwtBZc5AESw4qOzxXTggO5MGXb209gb7
	 N904Lwl59ScKfN4hz4yXZhbfRIdoYGuJgAhjtQIKtCivbqTQQ/gQusPGmHxESAuKm2
	 fHAQrCB3hdX4OIzQV/QrbgWcQTZ6i35NMZEt/BUaxO8yyjSmvO4RofmvRFxsw5hE3Q
	 WrsQ8EbI2ihdWEZuZDP0zwDSwnMK1asVKjc1krb5PBIg4PfLddjrumeDr++gmtri0j
	 azR9F6fjEM/JYfrhxtoNdUIHVVE80f4nfiSxvtaXZD92rPO/uoAcv3bmfdRcYd7/qc
	 U1Fu0Z8dMYvcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6613CC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256188738.4916.7650821702840676290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd966e8d04820fc7e800c9541142f695e70bac25bb1ad4a2f2514d3a4dfed39
Date: Sun, 01 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672561887
