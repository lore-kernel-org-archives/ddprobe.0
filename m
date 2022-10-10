Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F325CB0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7423AC433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665438653;
	bh=VagIGjEA20dGvBdfHWtAZ/qv+mPbaHQZC9W65VrIGaQ=;
	h=To:Subject:From:Date:From;
	b=dlZwOkVkNLvjkJ2HJvPLDeBqiXrMXcymWKZde3Vaw6h4GO3NHLGFWh4MZeMNAaobr
	 850MouuKg2mAiYOsrF0G1ocElKH1fIs5agRVZ1QYyOO5OqlIdZyjn+U4o+7LUyJTpW
	 n3f0IrNI7sITCRUebANqzlodI79llsp0abTFdDWM3hRI9SI/sy9QX9lNDPQUuC7kBj
	 7BQk/7mdHWwkTaaild46zVmpCMO3Ery6ecbNQrNBhdMP1RkJ6m0c1+9DNSi8pskngE
	 At10eH2udj+w4hl6nh+FhqaiwJQtuDF+f1qMp81FIQSUGZHXFMOPeLj2ICJVsII4b/
	 63LAuJI/tsLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5616BC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543865334.18049.3920802578437689001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9708a1b3e627de892709ec1ad16d84ffbbfdda1c76f91546a5646aa71a545664
Date: Mon, 10 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665438653
