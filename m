Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC79520E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9A1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665641453;
	bh=NbRSwamWLlLy43jSdkAS2LaDu47tMamwt1VqUc6dCXs=;
	h=To:Subject:From:Date:From;
	b=bgh4q12eW9wRMh+vAcsuTTA+VhWG9mVU0UO0UqtANBloAxTlCx3JqQ+H87jiY+Co0
	 4X8jDOS0ZjD7fbjQCyM8Z5SN4lmHCzmyooxFGzp2mQilDg3r8l4UhBqMP2PndbgRbA
	 85TqJrqi3MWP6rQ71fhnJxSvkUhIUqza9idlwXlXM0FbxfWl912VmAd6zBvg0ut3Lv
	 JVnIF/mMrvZgFmnv2mvwVYMD9ZD/FZClYllBQcD8jhpnxspooqCjy5nHqcdgE3cjuL
	 2Xc+gb4/PURh8YL4r3HJvG8Ex33WiLMJq7cEkfsoLUocSpWIDQM4Ss0QmsHW1eI3N7
	 4AyP3LFy4Srtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52850C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564145333.28199.10596572683004570944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4aa393a1d8859982db70aa52539e312be5459c9ee2d61e892eceb203df456f6
Date: Thu, 13 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665641453
