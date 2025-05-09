Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3561E2236FC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746763794; cv=none; b=qS/5Ik/j6s4r2DWoWhWchFThoiCAf+Mn7R81EhZZWuXeJok+2XbECTuU3wAuNYBgurIsptR0i+wQ3T4iasvrag/Om1EikptiGMkrfdv5OChE/rfs77Z7Z7LlFfe/C31J7xXKFdmSPIdpmSHhW6cjercUrH8Yv0Gcvgxf3WlzI44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746763794; c=relaxed/simple;
	bh=hs/GfL+ckwazM8BukM39tHnrWxyV5Sp6giN3PTGWs0U=;
	h=To:Subject:From:Message-Id:Date; b=ZcB5uZOTm9lzIlyK+Tl5mO5hREdrjJbFaNr7x7+zJRgJeqOJq33UyF+nNn5dor8ygQfy0s5DjxITqJJZdbIgSO0ReGYMieD+vZi7oiyQEjGR2NVAhZDo2EKszWX0QzKWGzV58yRBqHP4ID4W2npl/4SQnhWwR7XV1Vx9534gTt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rY+ip+CV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rY+ip+CV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76DCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746763793;
	bh=hs/GfL+ckwazM8BukM39tHnrWxyV5Sp6giN3PTGWs0U=;
	h=To:Subject:From:Date:From;
	b=rY+ip+CVfH6kAjDfSaKKrlkHc2p/Rx4Kfevf9BgTxP1V46wS6vZPpSrB74i8v+UMA
	 JvDu5p7k6eR3XY8VGZKcyFPThTGNuNEPN5I5+EIWSqqlDsnx4B3CUhbTIYKS88Dfle
	 0aZ6llp5iFwZjdGg8Na8uW2umTi7jdCNQaKNCGKM+VWlwcec6+6cxQrQspP5AJ72Vc
	 w+PH/Rjy/Vb0aZ+kACoPcJ/CzZyViCS6nWAkkX6d2YEhXUMjuwPErFPx7p74geIGdw
	 VtNpaLdxIsDsh+7XJge3kFj9cfa8S69MAAutV+kYCRCvklUMNK6mucIkEalXpOIGV4
	 Tgq7o+fawM1cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92330C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676379357.10596.7357453007500450407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adec27ae8dff1487f8c78750fc3bb6c9a17f0a791409edc89b3e83a930a9cbe2
Date: Fri, 09 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746763793
