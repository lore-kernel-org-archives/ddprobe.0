Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F7E17583
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730760954; cv=none; b=ZodGzJKyBFaBKPHrL1hwOEOjyoPnbOrPhUx1Ym3EK+jGrE7Kek8SqWcGUeBWq3zygbkUmHMAkvrC1Cdp89NjsJp24dQVBAHmqCf1LDor/FbsAOK8lc8EvWC4gc/b9vx2LcZeeAwQOfLdpP1qV0Ob8S2lh0Y2oOTC2p+hQJOjWoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730760954; c=relaxed/simple;
	bh=G+NO7hLm24yF9j0Ppt9oKyAhqV4TQIMNqHzeldx82m4=;
	h=To:Subject:From:Message-Id:Date; b=nwR8eNuYZahUdI8tgNeKEzc2JAlCX9R52Psn/P5AQeeWs6xBx+JIXjvlvXQ6igM24GRK3Sl+gkGSMHiKn98AlqLASMpM+V0w1LKo5wSiqGthNnQvzAXu2dzuydncF607/l/c9zkIP4g4gmK4RuEQEpQOxbOD3X9vF3URcgoH/yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLkMSFNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLkMSFNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5772C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730760953;
	bh=G+NO7hLm24yF9j0Ppt9oKyAhqV4TQIMNqHzeldx82m4=;
	h=To:Subject:From:Date:From;
	b=JLkMSFNQzNayEKqoS2k+TMjcjQy1CLukbApyblZlGqObat6T8AtOVxe61eNUz6pZk
	 tJ3Tvof45pz9xz4o6wE0QuDeQwlI8ZR9j0DadposlC4xemnv4T/Ujzz4RjTeidl5pL
	 njGM7SgWEYSZZ3hzn9xoPUrvfQPCflOsqs9lFUIjjSW15Km8Tu1qpLO26x4d/jq3+N
	 iEx+qgD9DgEn3WIc659a+VqgIKDBEE8jLuYi3UXwbXHU0uV202oHOZVC7GWgGeqBqJ
	 Y+9fovOiGgo2wevAn/cIoTdtJkQ1IcbXnFJHFugXlb+X/OW735IWwj6eVGwrPP5MwX
	 AVdMMPg6BalOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C7CD1CA09
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173076095362.10929.6201390222788512985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82378382aca7228faaef828ece40c5bb28474f031aa55b22ea34b895412e61e0
Date: Mon, 04 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730760953
