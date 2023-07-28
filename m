Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDBA125CA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD6AC433CA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690548128;
	bh=x3Av+i9fuS5I+L6viec6z9jGxW2zB3mpjk8dIzZcBV4=;
	h=To:Subject:From:Date:From;
	b=KG4whgn1f5uQFdet+etqwxyuzVej7JUeqgO5qBsuHmQwBAgzjI0Vtk6FSn3CqjsnY
	 NcDa5Pm1IJc7zfKi/TDNxhDI7oIIjMJyMevYVzgaILjhTV1h1YmlYH7j36Srlu7iHi
	 r3wWlI+MkH3i8O0krgcWpg2EYifj0C9BkvpYg3Xb18Qh/CJCOXt1vCYisB5Ni8pXyk
	 QbN4LylBRV5hXMVUqsPW918O4Q66ub9nnxob+tOelgv2Yhr5FlkUSZnQx82gKC2yAI
	 0J1SID7DHnz0pImKYANJfq88vpmccOuO7AgJXh6Wippo/IXnlO7mobElyTa3hfhelt
	 ATBpcxtTzF44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CEBC0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054812867.8745.10545794522986300398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3472dade719d8796dce3c578fcafbada721045f700467be122aacb8a6d482fe
Date: Fri, 28 Jul 2023 12:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690548128
