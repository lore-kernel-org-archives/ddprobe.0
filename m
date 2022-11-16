Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36E28F42
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737E6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668615054;
	bh=rpep7JKTbykwkkzNdpp00WgJGz2I03/9RyzHIwv6TPo=;
	h=To:Subject:From:Date:From;
	b=EJKcOx6RSQmG6XNd2By/+i6DOXMn7dbbDoxa2wB+S+EHQwL42+2gPWhaJLFqnACP8
	 yEUFz59m9UuMAqFgawVE6ipVXnosvj5cBA4L/CFNzP5QMalhNoV+il07KWdKXxBiID
	 Gg45vCvMrlhBPshoTGHAau4awyClS55Sl8QXwu6hWPe9lKDHfGgXsGNxKpXKPiDQmM
	 xGR9AWLSxRSD06gjeg8z1rhIdlbSerz9DY18pJLNL2MvjEmHxL1mS4kBD19SdpSSSN
	 GzDqnaR+redcz3EyLUEyNtJPq5jxY7UCdKOlynJquNSExfbQ0VewyBdPapSuuzFP5M
	 sihiLMemM9e+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55074C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166861505434.19047.2256234913092653062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f8b79dd98910bedd0800b37a31d45dad560bf2735d4c2bea36475eacde2587
Date: Wed, 16 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668615054
