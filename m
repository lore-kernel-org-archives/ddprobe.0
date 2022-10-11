Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CF53C14
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743FCC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665505253;
	bh=TeQUgJDnrxvH3sDzUyj3krwCKAmU3E+3RY7lebsu18s=;
	h=To:Subject:From:Date:From;
	b=fh+Oywj7lhXT585KS2EYSDLattxqSSOZXg9kBbEah854WlQ1ixYsFUJSEcL4AEjsS
	 cvTup+0wmYEwUUD6JxkHA7eiTp2GWTzhSDj1OLvdS0aulVcwxG/topZ8nqNkemGlZK
	 2XL+JjXc7R9XSNP4Pak4bD5/CZ6qvJzSpLUvrzP8aoel2fA6QbViacCNCheGx65/yH
	 02L2Qn/M55LZoqa3ZHKPu/AlGWQMoDcUyYXigRYFGql8fYyRiD7JVdCV6z7ae0AZ/x
	 zzuQtZyjbUX9/Va6OTg4knZHaZ2clglYACTdjMQHZcSlXoZgENDosjhv//h2W70rFQ
	 uN1LKTbIDe3Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C6CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550525333.21678.17049123383926078670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfb397f4f4fd276cd5a7ef07350ec615cead9774400f895d7975b02e9a71be9
Date: Tue, 11 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665505253
