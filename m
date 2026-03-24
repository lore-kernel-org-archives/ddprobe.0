Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B7B3BE629
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774334094; cv=none; b=DvuwtqVnL/5ArehU+j+LBqoMkYpaBNZWwPjJst+mPSeiE8uGmXvIy5Dg6DNEl6R+kST5kguBhWBpWDJztkixlvljblbsDOkLW/3MjSCA0i5r4/9feVtVlo/F7JFfL2ZxmWz2d5b5cjhz1FkmRpz++n1JbsGJfMGRWjmzmOjrwao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774334094; c=relaxed/simple;
	bh=Oq3vWrLErAmut5LdczrB4m4MRuhuLZZLiYDSE2XBU9Y=;
	h=To:Subject:From:Message-Id:Date; b=Ptcz/iCp2svdYtrgx+3FZ47pU8Ua27SPKWKij2NP7Su1bBv38sqyTf8uRDcvOTI05+74ePBkefYLQQKK05qKtzqtgtKkBzjsjv8f7f0JicQVFMyW60O+C2878iZVk2AgbfupSjZvjV5NqYhxczP99D25I7l7h6iA7PyJmo74H7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJODhCwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJODhCwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD4C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774334093;
	bh=Oq3vWrLErAmut5LdczrB4m4MRuhuLZZLiYDSE2XBU9Y=;
	h=To:Subject:From:Date:From;
	b=WJODhCwg3TCy3kPmE63yTHTiQyb5prMFVJgncxXmECs31vK+94wkwUnKDwt2wD1w2
	 lGqFvpPEkYffGCZ8+Vyt4f8i3WfgngI3mlcRpusK/kZp8PrYlj76WgX6KAsrCD3se8
	 kfUgGX9+KT73mL5EDYSAHfFWOI2a4FrAgpz3+WnWlpqj+9w/bVMd/SlIXUPF25rrWF
	 /Ryii93plOAV2QBz1WnI6vvxw6kVmVEWRajmPV/yT2Xq1MAd/YNqqCC6AQmAtgQzF2
	 IAve6jKyncmZrT2fPgUUVhLveN+nCtJN9BkFyBsHBUyLbOmouUGArxbGHgZsek+Rb7
	 BoS1GnK08wQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94384F532E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433409358.19248.5719601099960846791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ec51e64e28e6dbaf18b6bdb54985e36adba929bcd6b7e92667dd3eb4255669
Date: Tue, 24 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774334093
