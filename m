Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33687BA49
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728719754; cv=none; b=TmQ2tQjC4VJA9IzYpbxfSsl1M9Qrivm1U7XtN815WplzZKwoM9DcOA1iy6X8gn/5Mwt+Dr52JGZ/I7Mc9S7kjHbZ/v8taJSHQgW0qV/H/tefg0XoWfQfar1wqmb1O81wyQmbXG+KlqtubZUC+jJZg6diBiz0HN8UpJR03BroYc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728719754; c=relaxed/simple;
	bh=qEiDn1Ks/4y6Ki+iI3NRG9q06qxqX92YVLGcIS7Ah4k=;
	h=To:Subject:From:Message-Id:Date; b=mWR95BRBTTM8Aq77UIdIW2R/le+GgMnafbX/uCEwaQanbZFlN1iYBuacsmOB4DdB0Iwv4dBHwo3Z3eTBlglW7nB5R6JKGQiB6SesNLv/CIAvWAWTPwVCkpzrYVR4+/+2tJZupaqTTW1nkb0GpkcTA+6zjJJV0qfOg0enMUGy5dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHzAHRzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHzAHRzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728719753;
	bh=qEiDn1Ks/4y6Ki+iI3NRG9q06qxqX92YVLGcIS7Ah4k=;
	h=To:Subject:From:Date:From;
	b=pHzAHRzrEMRAlTohk/9rE5CeuPyxaXaxJgHw73PB48F8/DNEzLsFMuXlpuYR8HCB7
	 YrSfvanorNmR1SyJN7kSsAb7K2qSkeIm2+657/P1A5fPIhGe6aG0heTEW8Ddc4angC
	 VN2frSv7+r+8wtT+/Lpmw1k/nqQYuV3JyhyigRxFgbIdaouf7jC8+OCPSOGRGz7BS6
	 Hwc1U4q0axep37XnNEqu1MhfZAxGrKCb7DloVz6T4fC5Pe2r2d7TUzSG8xudERK8hl
	 9hNGR7RfM+MRKkysSNC7yDX1EhL/t58ZkPy2sKQOWxDhP+HKPbiyICpKWa1nNtkgSk
	 6OpGr64Dr+HqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97011D1A447
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871975358.11115.6586743496889295896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4bb8de2d14f47e5bd9b42b484a9838d34ddcb878979c9c7adb6ef6ea0acbd3
Date: Sat, 12 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728719753
