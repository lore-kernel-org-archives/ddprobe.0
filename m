Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249163793DD
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773496494; cv=none; b=RV7boC3PTWiLCerj8O9vT4zMK0SCWXk+rS7Lq8swi2qjS3tS4rwts1S/1jt/V//fP7JlVRyDdaeDG+6Zy1DPUCgefKPzFcFAGpDnTvwr+A+lFJ/apGcGgBs2ucWhSJcYqKXy5D03j3V2+wH6+JSp7jgOYwS31/OSEZmD1FKIN/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773496494; c=relaxed/simple;
	bh=QTNe6yOD5/YTFeweU6yClIlorzYdw2iKwzVhTx6nl50=;
	h=To:Subject:From:Message-Id:Date; b=k4tl94fkAkYjbRCgBdsW2ncNliPlsYc68DgQS8jvfqllZnolLi+ib0+BL+Nz+Nx7IVPuuXB8nbjrUeR/BA1UWWMcHaAEVcxC1xIN/cJNTKk2ZbBkMKS9eW0Ey7AjjMzSSIkVfo1CJ3NF3qwIOX6CJDgyBV8SXPY12MaH9jF6Vtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0VbWxKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0VbWxKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB62FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773496493;
	bh=QTNe6yOD5/YTFeweU6yClIlorzYdw2iKwzVhTx6nl50=;
	h=To:Subject:From:Date:From;
	b=P0VbWxKkmdv0o3k0wmzkFpuuX9xx0yK5WtdODEPe5Hv9lf7jvUfR5sLGfvvo2SfEC
	 moOz/eFQaMarFAjlhsRwWefzHqaNPOMzXqaAgsFd+GG/wQ9ccfKZzxPNW7iMvKO3Er
	 zuCDzpTWEo5pDp1hlDBmh7ESartuydy19CAjTaRSMIfOyRiLs3cgn+5AkrYTKYIyL6
	 pJsowvgpnYANDQLJ+9MHTiI0yga/yJab2CTcno6+pyzr5JtwQDiK26pVVAjwQCu7Xl
	 xB7GsbtHUZ6EvX0/k08A78V9doVtA/mot8iDH5w/uE/G0DZrp/8X6f9e9TEdTHTUK5
	 tYzmS4BUDuFSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987AD10706DC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349649359.12975.8265934366887955336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dacac6acfaab4cd4da5846e549df4897671e655896944db6e9f7520109cecd9
Date: Sat, 14 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773496493
