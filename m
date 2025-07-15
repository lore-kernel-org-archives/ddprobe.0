Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D4D17BA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752610794; cv=none; b=mLudMxgHTPv/TDrNkC+dL3WSinWxJyWIqw+7eMKsdLmk1wUTyc1Jv/ozehbv8D0vXJK70pyzpRPRBvLgdwum4Qr2EsYeGXsca1GxxdXUTb4FkMUuoZkxPjg/W/TybXpiAJFtLq52Gl2+ySraHPEi2s2jq5mWRpbw2zTye/cJ8oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752610794; c=relaxed/simple;
	bh=cSIiTPV9TRPTxR9DmXd9FQiJ7BbAN5flq1c318DN3VA=;
	h=To:Subject:From:Message-Id:Date; b=qIYcEeEaaIL37sIYFHQsxzODHx4fIiD1Ax4Iopi3H6bW+s8Hxfn9xleJPPjs8ml6hNwunzkPDNCNlsuZn/griW2fs/38nDT0qJCd2cJjmK1FVI3q0fXusMVwjgc6zATTijbTeVp3GId47AvqnMzHDrAMyPbKEpSd+Rg+gw76YHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULJMwRnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULJMwRnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AABC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752610793;
	bh=cSIiTPV9TRPTxR9DmXd9FQiJ7BbAN5flq1c318DN3VA=;
	h=To:Subject:From:Date:From;
	b=ULJMwRnkET3LRlF0uWUOniOLg4MaK4xhmwqgm+cyd6QerqMxCRcxdcLhSux5xmZ9X
	 L26UeZxGSyXOXlzu5fvNBPIDsQEAxZqktljj+lqfTgslN5KfcT/YpmqwiRZTLtaSdu
	 ghpiwT/ph0d8IetXrnWx0RJsp8kOsoptfxbnbNAFwymoO50Lz+mGJ1oYV4bjttZjMZ
	 zp5OwhGz3oBNjo3aSvWRaN/G8nAMBimqiWWLcu4+JowFUrgw1i/H+ppQLiTvF7Nhf+
	 MSYNml5u/O2aJ9ZpEPfdaim5ZZ//RvKqBvpyqOvL7vV1lYGoRXssS6xPbVlxVXgI36
	 hvARwMTF6yAlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A64C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261079358.5686.14640901697072816654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb18c6847a40bd168072839bdbee805dc87b3bc1d853509fd8ed51f95f01de8
Date: Tue, 15 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752610793
