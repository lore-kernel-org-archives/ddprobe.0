Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F245658108
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAEpTlER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD73C433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700605696;
	bh=S+Om4/+5hkwJ+r7kUyRZe9GOyYBkwXb/lzEoXW8Q6p4=;
	h=To:Subject:From:Date:From;
	b=LAEpTlERf0Y8fNZNfD/RtmA9VuCTJRiIwHlD5vuShf88krnlmsAAToE8ppnlITZzG
	 ZrJw7zAAoOoWZ0T1moxeBkWHbjx5bx/fhL4kzvyc/IbQx4DPspIArugsIXLm+c6RI5
	 06TUT+8ar6SB94qlzKbLNycricsfk+NYD/TO2ON1wG3tps3f5jw5Rj9fzY5ngw10CM
	 idj4A36qLG31KcnNrFfMk+nU+Gl+Twoop6W+qsZmeh3haHiFwiuRsMPG7IXeeeWpfr
	 hlQdWyrF3lmadSzpBX2f6Fd0vjHZtUiQpnF3O5HgSkNFhcqphjm/i6dhiVJgP+IIbg
	 BX7CjhXuj99ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606CAC61D97
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170060569638.29041.9716988361676482818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa9426c4f45023a9f0ff422e6b59064395bce1a0466f6f2e0311ad2e86db3fe
Date: Tue, 21 Nov 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700605696
