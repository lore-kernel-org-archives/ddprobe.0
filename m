Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14E317C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4C4C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664794253;
	bh=DUnzNdaD6SGsAlo566DMMCTJtwi46SESI4w6yB+WnT8=;
	h=To:Subject:From:Date:From;
	b=ME1XhN7InLEIQk9YjFSuyWAOyQIK9w8R2Sawb4cXNlYPP/fvpKtiD5gTIFnh5sk5u
	 yZghRAzQapnIwljW36XkVHztiyeHdFrTojet99+r+Oa7bhQtk9/ljwbtrYo0BrlIZY
	 r/0BGkv65WE/R0/oKAENhxbsLScQE2dUsNr4r7hr+ZuLj1h87/A4QOcNA3C5vCaK3J
	 WoPRVFuCS+HamUcV5FV5OGMbiSLbY3imaRooQUIrvuf37h8JkeNV53AcNGWCuE3OH2
	 c0ZR5cvB9yy+UVtsF+QltcelbbI65R+K7UtoCav0k3g38tHmH9U1XrjBToOMtCSjgZ
	 tZxTIuRyG+OzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542A1C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479425333.13114.10281734769600555261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5197c3a484b4829e380b484e3ec8f0dce6034561f037e03fc39c9d993e84434e
Date: Mon, 03 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664794253
