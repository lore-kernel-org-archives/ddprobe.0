Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B794322552
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757595594; cv=none; b=jC3Aus5j4AjdjMFaQAVOXuGwdvmf362q+v4WYEG86gXYTTo1zUwUTl9fPb9/g0+OjvBbWFDuD+gSCCBhhPXfdUqYQcjqUbzD8AEFXjdSLgtnye7/DTNyLyD2Ai8KIIdOqm9/RQ2uS0HUhLMkaKnoKEAwROHcwNNgV/vpWJwGyQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757595594; c=relaxed/simple;
	bh=ShxYSHDpveGNKZ4mZvJMy3KMi/JxrN4svAp4ZUDNgvY=;
	h=To:Subject:From:Message-Id:Date; b=J1V7vVMLond7UPtEcEaeSdgINIJW3wfF/GZB96F8iP+imlOvLMfU+J/BnqrhmLmWrGR1VKWIrrdNqJ5LHazPH9GlqcDd1FdkhHGzNAbmIP0Wmbpo2ACeVzpmQwKvCkfKxgyz8KmLmlHQruC4UM1i70HI43bca72AyRciaWQ0AQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0B2pqmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0B2pqmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96D47C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757595593;
	bh=ShxYSHDpveGNKZ4mZvJMy3KMi/JxrN4svAp4ZUDNgvY=;
	h=To:Subject:From:Date:From;
	b=d0B2pqmwJfyZw56VYHRFRjSjPBs9xkjUbCvu7BnyjKuxkJ5H1diz6yotcXHKz9h48
	 FsnHV+w6h8NB9DKD3y0QYGm7udcbprNM2v6M5tFmrs3JDp8nMjs4gHd4ihMVZlpZo1
	 XQXlu09emNvqfyhJ9gK3IAjSVlrhRLxIVyzFWvjrL8pLWQgKNRVF+3Ez7jPDacJIJM
	 LMf0l6pnE0jwnmjTtOjNcifzmzjS0maMzZ9qMJjGTLF8r3kdHH8GWypV9ZfNfNDD0d
	 pAzb1wEktIPWXxFvp8aLyd0IegD6O8ChLKCVanj6qbVgZDhn05Z6Nm0NPmywRFFVn4
	 gCMeJFiNDb7Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F652CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759559358.24557.6668579664546754104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d9279698cf2ebe520062790aa2dfdda08f35c893429fd1d57818ed2478366f
Date: Thu, 11 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757595593
