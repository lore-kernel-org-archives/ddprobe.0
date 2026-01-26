Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ED821ABB9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769451834; cv=none; b=mhO45HSy5DcgMiHgkDCf7q1y6vQ2fGXZ/k0j4JRL+FzgsEiAhke5JidvCU3C+yZd2Rxu9wg5Mu52dcChHcZW4itqLUNeNyvMRvuQcfNg9rabMPt4y4V0JPmj7zCdyhdX/tCnA+78fOrgmWlWy/TWAQu+jI7u2P+ycXSk+htm0FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769451834; c=relaxed/simple;
	bh=cmxxwY5x3nndcFQ6/MNnnSsNBNvMMciSbi1w8X1JhgI=;
	h=To:Subject:From:Message-Id:Date; b=Tk4IWX6Gl91hIMyATTg2VdQqJaf+6Id+4X2oF/oSP8jqaEJ0WH8F975jIWl/NJcRsdkJUT6wo+eymHgXbFAn7lU9BdEtte5CwDtqsjHbhAuRUWG8EagshA29TtFR8FDM1ZAshi3FWlElHqqXrE30Ao7AzxoFTT++0e/hJt/ZUJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxnPa6YO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxnPa6YO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F54C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769451833;
	bh=cmxxwY5x3nndcFQ6/MNnnSsNBNvMMciSbi1w8X1JhgI=;
	h=To:Subject:From:Date:From;
	b=PxnPa6YOGl0j/RP/zNfkegO4qvTXC6H2ax3xHaprFiPQKfVKv5CsxfNJcwB8kJQnu
	 01QhIKigQiUBDHv/+wfV/sRQEsfEB+3anQI+VgEbGTNvuw4d7m/uPnasncYFr+9tlN
	 3KR9OauOoMLl36nTk+eAKYZr5RSqJRb5kVGTsR1oITKVM/f2Hs/Ba8EOb5cMzzYQhv
	 wQHlXFbuInWkDkQPY9MDnEl20Sc6svWaSGaPOFr7YGAo5ndpFwlSrCwXgQoKblPRFq
	 r4aZelwr74mfrreB0hf9J/vZWgNiYTYTLclSO8PpCWoJO5t4mJISoDXCOedLf0JFP4
	 IjjBwI7c7TBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90906D19510
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945183358.19395.7696857575961874860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789c0b1ba07bb94916e63cb3b72143fcb851f61b25a389c3606039b26b26019e
Date: Mon, 26 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769451833
