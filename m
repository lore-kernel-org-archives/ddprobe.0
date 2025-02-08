Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C98414293
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739021754; cv=none; b=LHUopUhp9zT3UCL89GRD6L95lh+LThb/6xKOfRP9EZ4ILbjXj4iB3XplHVLXF3N6c91ydCEKFnsqxEOcUoNkKsouctOlbPbf+EAiog2oD8KnWr+VqXXTnT27u7g5xaBbYIritfnHC0QbCjnnEYUPYQm7v7ZmWJ/JOANo+W0rEJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739021754; c=relaxed/simple;
	bh=xt7r4Jn6g1nEljfC0xmX0NmQazTeiB1aOKD7sRBgsG8=;
	h=To:Subject:From:Message-Id:Date; b=Xc76NMMHMvpUfaFfQSEpxFAM83C/r3+mzi50aERoXJdl9HLwlT4xICiOPXcE2b3PJlvdSTKSKh8yOwqZvDhwdWsELMU/WMT6fkmfcc/+AtXku0RVdGi3JuCzQdZHK94aPPAY8N4NjG6bPY0ndmMwKCExZ3zFEWbDOhWbXyy6Xac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cO+dbLUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cO+dbLUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD3DC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739021753;
	bh=xt7r4Jn6g1nEljfC0xmX0NmQazTeiB1aOKD7sRBgsG8=;
	h=To:Subject:From:Date:From;
	b=cO+dbLUfWGfinZ/i4VRLlyE0d/eRvE0Pr/z8aTnR5MBkf31UaegQ0uI+bdyAbA24r
	 54LJah3OCzt/gT/JONArDm5X/WdU4PKAXJYaaiun7SRwsWgZuU51YA2dCguUief40B
	 YzroUi80E4dXNMm3FNmnoGE1kawew+jZCsbfwbrxoUOAs7W+zDJyhrn7nk3nNm/PN1
	 120ucfHxZpJLu1nuHcMkrxNrQkVwpMf0oYKqqEkkz/z1r5VeB5eApMG6Gr8T4iaadQ
	 L3nETSSq6eh5DW7lcXK/t2hMGhfvIzgatK69N56jC6h3LT2vOI5lnCWcJSfRtSzHWG
	 mfqdr6BV5BIFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4586C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902175366.11343.8647530930033725139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0627c915818c2ce4d408233a514a74068b5879e582a26cf6ebade7202fbbac85
Date: Sat, 08 Feb 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739021753
