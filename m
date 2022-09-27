Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60867F4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C00C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664281253;
	bh=P/91SaTq+QB6es4Tcw6XglBF3gF31OgXnWezemywcYE=;
	h=To:Subject:From:Date:From;
	b=ULe7sUSA6ajaHKe6bO9N9Al1TF+NDnLsQRCdM57dqiXjeob1he/gaqcyhf3a9U/Gz
	 wzqN3krm/D02S477ohqwqwbhlA4Wak3RzQ5ie3xWQ/gaJv2dywgsC8yqzhUnbK2YUQ
	 MuVNK4s+N9hF1rXqupKH3u/ZO16d/nUcaMueMW8XGoJtoXkBT4BAM54l0YdV95J35B
	 ICeqmuddIy3HioMYG50HVbN/8ISPrzfUFqZESrCfxDatXRj3P4gtcexKSXAqWcBfFH
	 ujbx2q56oc4oJqP+PKpPcAe+2JW9CIdX1h5ivzVg550+Gyh7R7XD7CFAR5MdnEc3ak
	 4YRjlp/k/jVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5753AC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428125335.4373.904157889313656439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1f6432ded93d6c86d51c48d000e872cae28a2f8cf4e2bdd35c76cf8ae0984b
Date: Tue, 27 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664281253
