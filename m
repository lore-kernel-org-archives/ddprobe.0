Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5785963F
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 11:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC305C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 11:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694775908;
	bh=T8DgjzR02hT59L4EfnchQc5iplYhkT1EoabdPQ+lW9o=;
	h=To:Subject:From:Date:From;
	b=TfVIOu0Pl2q7/EBziSSig3Ilt/S0mV1wIS+YxzwPpCgTFqGt1upyz+bYnI2qy0iWz
	 NxVPu9fZOpAmg2hWeQDv6bSS6OAf7zK0T4L++nYCOOHes9oKV3OIm5oBcvuhLdfqRc
	 5+UVRaGHH//olQZyKnXgg1318EbXuN8ONv5mBAGBd7VNPsd5xsqWnOTeT0krYGiIYN
	 9f+21hGUJlNaTuiQnTc2WNdCqKXhNsLddthDsfbSAQ3lfqYNxTZLab8Y1gM0z5Lfkt
	 LOQ46CbFLamJDj+Ac6onfHaurv3+9LZnCK4Do/BG+VLZXSBGy3UEZfkew70mqa7gPF
	 AwV5cAINT79gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7AFEE6457
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 11:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169477590869.19018.2666473341508923034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4409c59bfd1c39477e8aff6d277ed55697bdeb50f13b5396ca008d83d003ac
Date: Fri, 15 Sep 2023 11:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694775908
