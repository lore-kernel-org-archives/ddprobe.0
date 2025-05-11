Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B7E2907
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746982194; cv=none; b=Xyt79Ed1UvuCvBrtFK8E9gxRP48WnMq98HWuL+s2RjTxBbrWfS3ouYUpKjcv3EZKGvqRnC/jE4cmJy0wG3YBSYHrUWOmG3+DMVou0Ss10Jk4SfOvTjYja/wXheGburADJeYVtNyjWZFATjvKGr+oXkLm1c8F8CqBkyPHfurKu+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746982194; c=relaxed/simple;
	bh=vL4ev0W6V4p2JGM293dUX7LJ6/f9os7uyNDSPNLhoW4=;
	h=To:Subject:From:Message-Id:Date; b=dokKSZAWM18gr7SFZY0iAwbi7VN4FWpEDSeq/UO5MimQOAtFzlqJNVVrMec5Afa7bWhewmaBpTVdyp3D8CIos8nLDM0b7Ebb9519JfJmxVp1hF7g/BQ4AluMTa+AqU9o+ZlUzYNDic3WjIHqnwue/7UhLLvE9y1XcDWBvcouo3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg+Bib8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg+Bib8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D3DC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746982193;
	bh=vL4ev0W6V4p2JGM293dUX7LJ6/f9os7uyNDSPNLhoW4=;
	h=To:Subject:From:Date:From;
	b=Rg+Bib8g8SYSuCZB3m9F0/T1jbK/Wad3TM7+OLssEqMzz9fnplIiUPZw0hoU7Niik
	 3wiwp1DB7bYESddyvQFdGHNW2YdSrHowq5cXtIOhtyAy+rWWyBxCGAFWmrZkCDQelw
	 pid4/RTEXClQrX4cx0/ME2WT6fG0lq3So6v3bryC6MHkqDFLu6AGAuFtdXduidTITr
	 q38qIdHrL1ndKZM32Tp/VkMjWw5wHXuisa+H3duewO3f23Jd/HDdCZVnrEmPQfbCh7
	 vMRvTnDWytM1OaI+qN38o8orV0Yv9p1xg90HzLuZrpMCmj+XG/J0nCbWo9y6z2zNyy
	 TvRr8nfQyn2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA2C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698219358.26034.2367945425570218230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d8061bd527095621a7294656f0fddf082c46a88d652e1208116d7eae9a4591
Date: Sun, 11 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746982193
