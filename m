Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221552109
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8X44HuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E17C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697905696;
	bh=W9A62EsRc6eazshle1NlC3b9o+MHYmabcPuM4eCo1ME=;
	h=To:Subject:From:Date:From;
	b=k8X44HuAVH3Mal6zf89CvRCo+M7AgPT5mKyZuCZUatjfYp5DT5BXExu2QxlGtnBCE
	 0wnRELm8n6X40elUU/l+sS4s4yLnOoJNSLZmTuhka7VoHIC9PMOJiwiduyZfXzIHNq
	 6bIAHzzlNp981t20tTrfM0tFWpNSao4VWi9agEHqN+YfVZpoNIpC1fMws7UGxUdJSK
	 7hr2XYZol/9fOrsd1DSI+pTLnw6/vLnCCBW3giIyKMSBwd/g8wCaai8yQXKiwOLNTi
	 XD1YaSxKcyJ9mmhzcj3OofG5ekoi5UH/nEWSk/tlXlRYmjFa2CdD6yfgA17/W96ytx
	 C8poc1TjUlbcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66712C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169790569638.10619.10287280100636113131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabb7dd01366172adfbe9eb831225bef3eaa6825188b7a9a495e2464e9093036
Date: Sat, 21 Oct 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697905696
