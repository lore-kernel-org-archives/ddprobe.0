Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AA217F3
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA20C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667970654;
	bh=Xz2awmhrlilKk3QOpoMqY5fBwD7PGkEm4yvD9Sl+dsI=;
	h=To:Subject:From:Date:From;
	b=VSnLEnrR6l4C0t/MqQPgw8rpZf7qJ0dTLJlMKRTV68vTHOlgMboXG/Wzt3BGdGa+H
	 C7C3P/EF6+UHcdcfPeJ6hp6vIhmDGUhX6DK+6hYResdlNIas7xrlK9Cn97ZQJZcFlv
	 3atFPPyGIsGojDHEqQJmFkW//1K58bH1LTiXgHLFWdqtgjdQDWdX7lLSTuADuTsLNl
	 6wyOVgw3lO94XIHCjpkf0AALZvmjsMPHDG6Irx/vNCSuAPIouNBZUMBJYKlZrP/w/y
	 MyjGSxb4YgEHcS9j8OZID/BSihAPXAP861j/PKjZRfUAtTh+UKJmwABz3RmEz7SjWd
	 4gFgyADdxsxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EE3C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797065433.7380.8119230430620019026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97543479777aa9281c29d81c381705dbf38418f6398b115eee1a24c2982850c6
Date: Wed, 09 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667970654
