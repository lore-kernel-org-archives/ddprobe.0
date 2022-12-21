Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE587E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7825EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671631287;
	bh=9IQD8t49BLWevoFOdY6GAoq4E5CDkwWxtHqVT+17HHw=;
	h=To:Subject:From:Date:From;
	b=TiIg3uNmsVFDN6SGSIa/F8acI5WMSBwDqSTXuSP/tqa4o572RNbcNivvwlzMrSJNo
	 mK1ktsxCsqj8CbGOVkFOT+qrfbAJ7umYUvanWL5qW/TfDsuuPoIt7CWhsdvdL8He92
	 jycrBB9wxEv0/kJcVWLoat3ihPDq8mZMbZ8hLNxXHnH6G4/Teq9VJrJ5aWe0cAJqHl
	 sEXDZRPu1Wd/+9r5kOtBOctepkKQcOwP4/IOe+F+PQfyNat9WQDlKlYZnrX8OZpYft
	 1Q7XxOgX0Ou/eQxNnKSqmcvAlKzMYrzR2m9hErdE4yqyYGeswzqB8hCyy1E79Gq148
	 lILP32UFzenjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6073BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163128738.18735.11370287289566175650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7020c6e996fe4935968fcc8684efaa32dcef36c7b80ccb7176e8f75df4895d3a
Date: Wed, 21 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671631287
