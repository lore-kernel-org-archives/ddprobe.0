Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAF330FA0
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFB4P2bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0D1C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696619828;
	bh=cHIjhER/OGdeuGSSsxvoC42ZN8vdZMQONNDUSpxYG5E=;
	h=To:Subject:From:Date:From;
	b=MFB4P2bxip9c6bY03uKH8H3EDvoKka7F/+0QAX806Y/YJ95K7GA1tUNY4yl0hcu+2
	 XUnWA3/BadaMIst176Wi1QpYrEpoLsc8ODj0Q0Oer4FhyPJI8tflBHglSoXBIZ/EBA
	 PTiPzay+VQpNmiaUgXZejateXBXEnBupII5F9u96r2lG/ojELJHw0Pk1gVrFJw4KgH
	 stbz1CwXyyMyRjach/utmMtbQpiqpBZBbhP5vv549MSdBvSP6rjKtkAzKp2HnjBbzX
	 lVLM3RGT+I27Ki4c5Vc7QhGrmrT51g8huw4mYhbzJrD9Zqzx21pqgxRIZizCMN4ttx
	 r12/qgIX8+KOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8745E94105
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169661982874.5396.7571771703318913294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58999c7713c57d332d423d9dc28b579177e8182fa02ab7fabf5f6160dceae2a6
Date: Fri, 06 Oct 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696619828
