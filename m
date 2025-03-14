Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429C21E04AC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741994934; cv=none; b=bA43+ar73F9NIgAZBMURFqZWezn8vy5JC3F8GVykQNkbsPD2FayHz/VDOcxE9T7W5AFFg9O5qlnR6D24jvkbwXDaI0JvtIuiUylhE3htBjXuGhVTlaSNwnBb6xfS+DrOxrj2RVM/nOyGIYafGQ8P041qQRs3bxIRGgGJpSKr+c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741994934; c=relaxed/simple;
	bh=Qlkl+TEnwjUDktJuyurdO6Iq4ci13TMgv7bsffHE5y4=;
	h=To:Subject:From:Message-Id:Date; b=AtHxmot9yL3rc0czgKqct/Hn+fC7GX87/PlxzW15ff8zIiw6C+S8MOf7XYIYg2X/QNGMH9MjgEAg7mWErMOVwmx+ysRRj0HoyHKkDe9KWFGumFKy5QE+f4POHcTV94wXmK+ZUwv4lt2NL913Th2pl0NYdQzrpurizHN4cnCaUL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJm8i+OM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJm8i+OM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A870FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741994933;
	bh=Qlkl+TEnwjUDktJuyurdO6Iq4ci13TMgv7bsffHE5y4=;
	h=To:Subject:From:Date:From;
	b=SJm8i+OMRwtLlsD0865xBtPtxw5ccTypZ7oLpZ6xVuN89jAO7q6ePB0bZ2v47ZHWS
	 7L4hcIkQKpZQIzOWbJavv5Xc8JpVG79RJ0jGC1e+ZIzjINqgLODuz1ZpEKRM8PKPui
	 0EEom8hTDCo455iQgLSTHT+4GXv/2b/N8hKlI++Bf7YjtK0AWOMfGJMpUfpcyCGoj6
	 qyctdYBOaAIqFy7Saf0MbSFJmpRBSvBoewfL+T1IZqITlyIBzwd3XLfneRAu8je9Ll
	 15V7sJwaymCK4LYODmxcfmBc9tFqYWOhPWxZ/2OflzOlIVAqZinLC4wBdg0PvXHWcV
	 CqZ8DjYip0FJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D80C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199493358.20271.15444418766012280167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a937fec8784cb948698100eea20d931c5c2b0a02819299b4f946725130bfff7b
Date: Fri, 14 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741994933
