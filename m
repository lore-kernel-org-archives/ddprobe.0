Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F711624C3
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739711934; cv=none; b=TLfj/1Znxaf7TkU+8oB6mSOX1DVvALc0wGrR8zDTb8lPj7aJRVw3LxqbB5UpFxmzHxaHzRUAeIlabNRnzbKrpij3FwpZA0ssrywcTSBP3bAo+XKjlF1Y6QI9PBXuott60nvPVcLX2fOW0AvwRnBtbaVfDW+Kjb1OeBJrh5vkFIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739711934; c=relaxed/simple;
	bh=VETM6de4Ve8lMsQlWrrMUuAE/n7zYtmIMt/RnSDKw+o=;
	h=To:Subject:From:Message-Id:Date; b=J6FLVg3kjrkbRcqeoVFAampXtRxjzOf+r+bFTd5QaVX58kvmbPOf6cZeDpdnwNWoxYfHQq/ZxesUh3AUwludV6V7ss29j/OoJEpCmr12JsN7LXeTQnE+t2b/vq+eblIIrWs4WRYcmiOJfvUdO1Bw47N0yiiCuCmBsHbeNtY5VOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/vZDbOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/vZDbOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE8EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739711933;
	bh=VETM6de4Ve8lMsQlWrrMUuAE/n7zYtmIMt/RnSDKw+o=;
	h=To:Subject:From:Date:From;
	b=N/vZDbOJwSlhMvDagk6GIpBwB8ehpR8pRKlJfJVDImH2hGm07CrsE+/25idGGZVzF
	 4jtmkx3CK+QvlVERy4hRk/GbKTZxg2eMyJmu++RJVGwsK1Pi/c8mlYAro/pZet1Wv0
	 k1UTOLPLJbw7PIDmXqmsHyvI79IQ29r55Ff7I6KjFd1kgIovQUqwfCIlk/0laDm/SD
	 mvTJ24wuDO2P0bo58gajDdT+UZxK7IRFPxziyVVCaRnHCExZh1OnBnfOC0ydz8R5Pb
	 fJFzzSVQleaJ/0B56zFZJnLXQPygaS6NaZskH4KKWogwWgCcQKn8OBnwKI4oe1GZ1W
	 em3tCvKZKSEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B107C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173971193361.1796.16441344171682323417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8316daaa7b5f2b5f315ee301f6970ae63b3f92feb8f649be9e0e63fd313d11a
Date: Sun, 16 Feb 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739711933
