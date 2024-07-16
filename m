Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3646738F86
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721149523; cv=none; b=PrKmSSg3jEoLvS69T68M83xu4FN9/UWvzPRlaP5ba9VDpoQxSIS6+5qgIaZaylRbGDjfwKlHktLKFFwyiWglFavoOlxiRtaeZG8za2ndlWKIK5iRmZldgUPQJnBU7FtCZ7Pp6QVNSEb6WGQxXv89ZbNiNAp8dQLn9wfmxmzVV+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721149523; c=relaxed/simple;
	bh=vMj+sbleAaLUPYHzjlq1LTY+0wUaNfTCBdm/3LhxwNQ=;
	h=To:Subject:From:Message-Id:Date; b=devJeWrizQKyRkI6XkcfEgVHrFS5qhWJ20ZqKJSCBbomuM2r4cdjtglyRod6eFwZAyj59KKvKE2br+J7UqWSBSEhnimkNJxvJD9/Axfco5D+6Wl+tItrWtLPAM7LHjpL9V865Lk3vwMZ6q5aVcyMvwr20q8D6ttkesL09fQumWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+BqBMiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+BqBMiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8EFC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721149522;
	bh=vMj+sbleAaLUPYHzjlq1LTY+0wUaNfTCBdm/3LhxwNQ=;
	h=To:Subject:From:Date:From;
	b=S+BqBMiAHFMg8iGb3H33oXC4QY0yKxov15Xt+JP3pYX37hXCbB81prwcqJP0gyMhM
	 aNib/sdQ9jp6kL59rDxvZayJtYz2WoMC/tdrLGKKQKnDc2+x1Kg5EQHBFmiB6JLAw2
	 74orTqartm/hyblltB9j9JEAfar9GxQ00pc7EHSnXPx4Y/CsCVNt9ymbhQKFdFumdx
	 5k8GS7XInoiY+5Lns11tZO5QhA+YJ4fRI+OvgM9FbBTGe+tr56drS8M42xcdldAr4c
	 fJJpzLj7mOwMkoywL+2yGWGzVNboPHHoDYpi9V8c+AC8eU4+xzd39MS2RoieA+4TPW
	 W2xb5iCOA6oGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF129C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114952277.3910.6696096073822838185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da0f22cced9934bca8cb9515e18c7f50265959ade74c0141845f5031d26f07a
Date: Tue, 16 Jul 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721149522
