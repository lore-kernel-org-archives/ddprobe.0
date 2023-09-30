Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642A11FA8
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5567C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696052768;
	bh=BjitSDFKLWFakIeYIyeB+g9zI0eT7OH1hsfZYYtpXPY=;
	h=To:Subject:From:Date:From;
	b=kSnDPG4g1PCFnjGl9/5uuaASds14765EeNNuQ1qeuMd/ywNSi3otmOpJtX6XR7cvE
	 Xze+Jv4KquZVOce5nioNcvwc5UitYdrJu0lxv8UMkpXByKDZT9NdYnEW/ScIilBkR5
	 bqsUUOjDhTPA2y4ovHvrKo2FH2YoN1N/Ll/M+Qlu8Y/P84eG2a1i+oP8Sp18qmSY7E
	 a5EQq/kyozkeJ5W43qi2QuyjGlzhqlF74x+GqDFBOeBk2vDw7NGXp1h9/XEuzKyhuV
	 l75KzDps9jG1gkr4lWbzXu8KzLQreb5f2/u16PoEjEAwOtD4W3iefnUoOrrUjhc6U4
	 zruvSQsB1LC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B9E77354
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169605276867.4900.17381852691468223649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a656c0247aed51826765e50463bb264f78ffb2db9f9281c49e0ff60ba7157d5
Date: Sat, 30 Sep 2023 05:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696052768
