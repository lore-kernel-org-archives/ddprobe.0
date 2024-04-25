Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5216714C5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 14:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714054883; cv=none; b=cCMVsANm3Nzd+pBzHItRW1V8j77Ook92Ou+aneUt17l1imJvoqLpBrnhVhyL6avut0TG+3Scv7RyFK34bxgn6fzdQ4GgMnYbLWWpSit5MYYIXn5avGw90r0iAkiQShuvnpYVtdlxm1r48BBY93tSZW7wNGQh8fM/n01bJo2tcQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714054883; c=relaxed/simple;
	bh=IIZEm3RHXj4QcOgYCfp65WFqyIEi02oo8UThyOMo2Wk=;
	h=To:Subject:From:Message-Id:Date; b=U4A9wJFtmddMJum0nVQKlHv7NZGVD/WcsGmZUKfwy9nOeW9mv6QCzNW6bdgGV3/fmxnOLTtVMdU90KjH28f5p1y4u4QFeC5whneHk0FNDOyipy4qKQHql4649w5d/0tFiPgbFZLVr90yeLk8ukOaQMWTiE8IaY7DDeAUxT+tZfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdSb4ok7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdSb4ok7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C10C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 14:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714054882;
	bh=IIZEm3RHXj4QcOgYCfp65WFqyIEi02oo8UThyOMo2Wk=;
	h=To:Subject:From:Date:From;
	b=hdSb4ok79NGhAG1a4DIzEkWJ55ekhq9mk2Aj04EtOSNHw0bJAgHw67+n8zF+w5qaT
	 C3tZ+NrRZNcYv64ZuVkyYvHPxbYkAoPsEn9l5HAVFaaZPvPeIJugtyBpu4JUKTf3gA
	 Qu4sdqmoNBdPmVdbBzFt31saZ0HXi4iIlDsxz32GTXAcSdaswFyG025V/iEalVCexp
	 3ZTPtl4Z+17FDKMBX0hXMu/bvQVxbr5iQpA/oTfe8ysEQNew088h9Tgq0NDXxYPTfB
	 hbbJBlVvuSHsYE48yIE/M6LtzqoPgM/eip+OKefbxzvC3Iuu2YQmH5tIrGkQSedueB
	 fwwhxRbFgqqZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38C8C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 14:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171405488279.22145.12411791386670327611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b000b0ec025b2d88c4bafbf9e06f99e6d0a1c76dff3250b708da3f1b37b7e3c8
Date: Thu, 25 Apr 2024 14:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714054882
