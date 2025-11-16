Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190B61799F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763258454; cv=none; b=cvUjlUsCFUhRrtgX2xsRNabQBcoVRXn57G+2YCVa+soNrKfMnvYGsHOGyPbOsjRTv6feoomjetQFQlbTW3aPLiG5eMzNVaPPBjokonADfzXqpNRxDjPBhf6Y+iVOxiUSoLJ8RIwIu+RibSrL+zcPxWe1MEI8SREAEEBgA9+gJtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763258454; c=relaxed/simple;
	bh=Infy1sWDSJ+58o2Txf8L3VlmqtVWBrm6fPRm7mDunSs=;
	h=To:Subject:From:Message-Id:Date; b=QBwlCOAxv3j/ihT980/bq0cVv6RtUEpuqxSq83iebZDp605aINcM2ATWj//B7rN5aG1jSh9C4qQk+QsumMiR3kjbR6DeQFUtpDMajoLQ/Wf8ztyvgJ5aaFmOio6SGmLxqkm+WX5IkNmKX5veGCqbnwQBuCuU3rTZ3E/KcQKACDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUBXg22R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUBXg22R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC76C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763258453;
	bh=Infy1sWDSJ+58o2Txf8L3VlmqtVWBrm6fPRm7mDunSs=;
	h=To:Subject:From:Date:From;
	b=EUBXg22RgAOmS9BC5h29NzLKE7YqIv+eczKSklczRv+Gum/+K2xtrAHUMaNga914x
	 MhyF+X+pOBOO5xActJVbOZDJSApw7dRt3FwBIzLQkOqkOUkWWL7G1Jr3TiDun9zq4K
	 wJKeFa+QyYg/oRlIgzFNpqPTOnyJSQc0MRRYlbrmvGdQvi39zZ2/FUsRdrQ8F0vFcp
	 bGvxQBr/GPxlBjVjqaNsRay+4ZzJOn9i44+lKtW7Run8x2A3GppRFT+fLqKwLEB5kg
	 TmIdbEwPc6nY+AG48S1g7uEicP/siOlDDjVvs/6nYrfAsA3FYBcm6OEAlWaMzjgDiv
	 yuULmvYXUwdxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F049CEBF8E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325845357.29907.17461907049293551707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dee686e1686ea5d3bee6aaf729be179f9b01e53cb4508292c20e0ecee076df7
Date: Sun, 16 Nov 2025 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763258453
