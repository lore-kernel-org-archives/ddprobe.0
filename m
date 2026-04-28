Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB693D5252
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777369053; cv=none; b=f5ceBo8Oq+KGbBE/CCsGnxoATrgYDAKMPhpmmN+87fpWoYOj1iQZl0A0WAcThzQarPSSXXt/ns3jaCHZNLBSjVNOMUqcXLYvFeQlw8wyPtDrb480/euqVclTv6MqEkSETe96O9kRl+JG5s/93tdh340ri5cC/k8lgp42aoNFzE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777369053; c=relaxed/simple;
	bh=PifioPbub8I4Jzfyg/bJ78NMpTr1nS+ULMixmyXfcb8=;
	h=To:Subject:From:Message-Id:Date; b=gMpf7E+Mg0WCxCS43XuWeCnWlMfT3BpqtQyC0GIwcRoRSLh/jAzk203scTnXjHyQQb+stGnQBXpojKlAwy5pX4RGebAHrwgoKxEN8X24k2zaMBeQRbEfJFMZOtd/rl+SnpB6t20DjKYQuoX1DWwl+mZLqA/jSpf9/11PtJB6+Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmmXl+W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmmXl+W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE48C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777369053;
	bh=PifioPbub8I4Jzfyg/bJ78NMpTr1nS+ULMixmyXfcb8=;
	h=To:Subject:From:Date:From;
	b=EmmXl+W9fZUtERtptGR0et9YoIrawZfzPOLIchJG/V68TS+7mPVXe+8EqUz7YSr4d
	 50kQwTiBpxnyVSFE++lVLz1qIMke8FE5Yaqbx+W48or9I0HZ8MhmnlqsRqxqJtVZ7z
	 p2MQQX+2D9LlvvZRvASNXddGspGQLW+dS9vaKKzuCA1CDl8m+Qxlp6QyZrQ0VQC+x1
	 Wj1uA3RjPzgu5Sms2g1oMO1cB3RjgQLZluYgfJNZW2LLtZRIIYvPiieLNOs2adIy2L
	 /+TPWp/Eeusd+QDhEmVd8yt8A765sXnU8SfH1uyRwBMz5BCwQgL540IHhSCuNWE5um
	 tw1QE4n+e66rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB563FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736905369.22201.18188229553879155848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549c1a5d4540ef614b8b004c7226b5cf177e86e21390d255a9f0e8e29ff862f7
Date: Tue, 28 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777369053
