Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A2E4EB23
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706512097; cv=none; b=XwM/BYhIfJr9jzVaCWePdPTY5vt59C+FDB8M83jVQR24B8xUiF1zK93Ce+geLPfeP/C5bFLXcaak0YaZyHHnlTKSuLaZGuNm9gKtaURtWFoX2EuOwrSlipD2zVCSFmrhHk8347zqUNI365eZ9VkH/7q2m9gtqBpCbMZ6LK7gplQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706512097; c=relaxed/simple;
	bh=Q463g1ug6jEoSCeHh6TlhDA5aYwbI0lDEg6nDkimzSE=;
	h=To:Subject:From:Message-Id:Date; b=WXx90t1lrgmg0oqaUe2TWMkJ5tETEyVu79f8cOih9DBraMPcoR+EEndKRXpC5XF5pNssT9w9m2iuOStL3EdZnv31qCRZM3MbFj8Zem8/xAbmXWp53Qo3sDeXqb/9NHIsJXoCUtEy6keqqWZ408enIchkGO8DtTdNoMXn1RxnTaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WP7pp7/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WP7pp7/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD05C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706512096;
	bh=Q463g1ug6jEoSCeHh6TlhDA5aYwbI0lDEg6nDkimzSE=;
	h=To:Subject:From:Date:From;
	b=WP7pp7/vDmWoM3F15bNhwz6oAGrDnujbXHQU9dm63TwnBvKELFlAWx6q7Z6n26XEW
	 NNusVSBOBa5kQ/TaJ3HMp0EgeM6owZ696DvTSh4SNg6mcdXTPjyPJHJYfyoevgWX6x
	 KOQhc7T1+xfTnmkoHlvJ9gHwia2pFj/wmcDFQyZ/rjfQLFfmPndPT1bCJKumQ+jC8j
	 OeXv0ZZfANIZV+LPvXhKrJt5maqQmGnLtOo3xLPtA+Q0N56Xf8QMHZUxw3QFHn4lUY
	 LuHaDENRiupifBNYrGHzByUULEhEpz46vJlmG9mbZ+N1f9G+i/4iwmPe5JK4m9TqXv
	 Saz82S5r+7A5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B74C47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170651209638.1932.11168129067834430098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc36a227950b7d88aa379facdcd9006aadbedf196b32fc786ad83922aa61471b
Date: Mon, 29 Jan 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706512096
