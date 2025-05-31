Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FCD23C4EA
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748696395; cv=none; b=E+AjfdpRgIH+OXudz2qPOVspUPMEamh60pDwIfErQBA28OBHAfb7khcI3SC0MY/gmPLMet3r32NlCg2aHNV8VuDFdqUZ/68w+RYOcWsDmJIyiOlUFyLk646O7RBH2gAlX6Inzu72WOlG4CwCgCaSPhJRt8iY/WJOf4mhkueJReQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748696395; c=relaxed/simple;
	bh=ap4BU1kXECbkHtUJNlm5AhMEzNjSo8kd3LQBTXKh5dk=;
	h=To:Subject:From:Message-Id:Date; b=fL1Hn4Sxkln2r4zjc5Rck4vLOkeQeJxedEj/97uzmPsirO4EoP9mj6Sj5wOIl07ehoDN71ahxQPpV9tzWqDy5peMXMNqC4wrf3vr/3NR2uWz//V3fCvZkIsMq8KDx4ImMoBe9I8U24J0UnyKW6dgFIxDGiDXlu7rR1PLr/zA0jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUs7/Ydh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUs7/Ydh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748696393;
	bh=ap4BU1kXECbkHtUJNlm5AhMEzNjSo8kd3LQBTXKh5dk=;
	h=To:Subject:From:Date:From;
	b=PUs7/YdhO54WciuW7/hc1EF/Bd4Ljyo9eTZ+vLUWBXFejtYTS0AhbsPbC3V4u6nNP
	 AGGxV0WtEZrmc8b1b0XOa181Df9grTjV5EYvqDuNfX0+w1rlYpweKNtc9fZ5/CfyyV
	 QbB7CLjjN1pCqz0nV+CvWHFQ0Y/t//myEt6pnWMXUkIP6S3OZ/OrBs0JxD11+7N1T2
	 U/vyhQaRZgivEm1Y/Mjq5znm2hCghoJcUsb69mm3x2h64DaVAS7zEySoRWiyobJWIQ
	 QGnaH40di/OBXiMb95oRvh4YhZF48kCQYOZZ31G3uH8XNcX8/wKOIfVxHzSf0RfGi5
	 JqWGOzp6izTbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94721C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869639358.24538.11601074881900453453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b105dab51bee83adae9cc7b8953eec6b00c3cda478735593d5b4ead400e460
Date: Sat, 31 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748696393
