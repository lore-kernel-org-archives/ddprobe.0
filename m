Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7AC3DBD6B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773938094; cv=none; b=siwNa8Uh9QVOx2Tbt9DzAaemCNtVT1OvSLq7zsC6WvaXI56JmhAzbMw7WEO+cUggeelZ0MpnQ3a5aUDhnxVE2Ijjkau0SGHrUyiK2U6oIeD/LsebR4p8xixNCtOU5avF8MoLRRnkGxFAvC24e2m3zbJUfPJW6REHDeXJLXJQywo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773938094; c=relaxed/simple;
	bh=8nR8LEKAlv2GUZ6c44xRf5N/wekGNkbg2e8chCgs+lE=;
	h=To:Subject:From:Message-Id:Date; b=tKXbaiqGRXKlg1AEu/m/hDMVJQTMz6h8VsHlQWn29lcl09tVfYrIFqs6I7g4cC9QhF56X2diL7M3DI1e4rnmHly+d+YWdqUWOG17Td6lJ8Dyz15I9l2ZfAEud2seG/6irUyRu3vh0S3OjrML7+HKCOZEVAd4P+iUHgqM3t+oVGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krWYuhfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krWYuhfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F623C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773938093;
	bh=8nR8LEKAlv2GUZ6c44xRf5N/wekGNkbg2e8chCgs+lE=;
	h=To:Subject:From:Date:From;
	b=krWYuhfuJwbR+L8oDEtNm0KKzabKQwi3TTN6k/Ho15nEdv0bK8B7jRfT7v6iGKXUr
	 HzCJYF80CdpQFzcaEmbePk7BerXebMCtLhUZy3CphaqAhhmci7UMb98ZsmnKw+Y3iS
	 QEaX61qMa5WMOvauOOvHsZSeXUIwY/ZpheaFVqphvOmk/WoAa8FpzKM87SewwGt4q5
	 nC+aJuY7utAB32/0wPesNlGnwwokMlz6juB6lKt07oqAIvevEJ1iywDW8DV50eIoSN
	 tfanMdZoIWd/b1xjHqCKgRYaXeDl6sLYNdzpYoATRUlkftKT9I8ecKFLVh+uXh+jUC
	 Ky2kwLpr3Mkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A6109024D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393809357.1449.6924291932473724780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6212fe4c59ba64a7d476aa1465fd0bb9f1c25856fd8dbb3da79bf4204c681918
Date: Thu, 19 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773938093
