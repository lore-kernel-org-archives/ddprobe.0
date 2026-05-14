Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED9438B7DB
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778749234; cv=none; b=bTmkO/rHMYmff7y7SkmQbAtuUG9aT+I5E7/04r2gsdWAV+1AU6mxBMyu6lpJNzt3JczXO3qRKPYyJAj4rMQiZw7xaQaoBPIm2p1gRhADnUwjJwU/IEBp/8Xn0KtWgePBD/VNmjD1e9Yx8hL+MPqEHWOIHcQEGwvuZgDd33Bkzk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778749234; c=relaxed/simple;
	bh=BjwNuzx0bXXYzrOYc/FpQiuEuGAqRj4SVWC0sXNcBh4=;
	h=To:Subject:From:Message-Id:Date; b=vDqEZheab7cUIwCuiSWXlYwpVAjThhwtiJVkFNl9O/8TpVe5BWKTL4QfopA+FqGpNhUN3r/S7n3BncHEnk9/0ZIinUdHz/iUp9dWphUq6OJmQy1E02dkywGxHcQdhLr1srRp7W9If19PRnX/527xNfqPFUqB/k8z97F6qBxS8MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stxvr4wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stxvr4wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC76AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778749233;
	bh=BjwNuzx0bXXYzrOYc/FpQiuEuGAqRj4SVWC0sXNcBh4=;
	h=To:Subject:From:Date:From;
	b=stxvr4wpxKQqznFpXEf6mTM7Y3K9Yg1OXK4oL0nCy/6uxQPljMaZLXPTUlm7vc4kP
	 9zJL5P+VPTtZGhr+x6uk70eO4tJKVO4HFSgEcSh74SvJQ5uS8vi8Kd3CwxHAnOwzgL
	 L/YYnZhLl10Rf3BZ7FBXS07vmGIkdRpLYDe3Od9eEqjx5Lj0CGKbOHZrjWK5LKf9Ou
	 rOtxNUwJy1I54XCJSPZRadk+TxMm0bOgIZFVdht3XMf6/xa27NaGM4Wu+ziOOfZCAp
	 UEU9I5BWMSYAOsKugzoyFNDidXpvyAEkG9pPlXtyT1UnXHP+S/n6Db3/9gTUS871+R
	 SJls6PfFs9UXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC99CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874923368.8138.14364399929335664935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ede53287d888577fc0c742693bf767e97644e0aa63c637711e1567e26a536d6
Date: Thu, 14 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778749233
