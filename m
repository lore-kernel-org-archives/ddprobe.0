Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7D1185B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88379C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673131287;
	bh=ZZBvPvXCIK3eXwEcB+WZd+JT8Fz5WMiXnBw9Tt8mlrM=;
	h=To:Subject:From:Date:From;
	b=ue5ECHCD7wnB/zTBWQ6RPbUrpdAyrfFqEFo0t/zM/s2QILJyq5+D1A3zajoZbOYhp
	 0xsXACyozydVISgD8cMyGo0xPpSrFhArr28i5dpT271XCrh331rANCqiKoA1rjmjNz
	 Kw1cgcnyoDCYZI4ELECzGpzv1OrzI6IuvhNxh3b9JDNjisSzGJg7l4xGbCkpZ9wh5+
	 vSxjn09KuJe3qajWDLvNe+O6o/3ElGvqbAosHodMkbhm01bkBrEVVwiiwrSCTK1+n1
	 arRX6qOgjURqdF0hIAtSTxvWtLmhl3PO97UKSwJdG+erxF+5prIlixLgYhr21RMU9r
	 t7fi2tnJEQKgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687F1C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313128741.7311.625157515040550562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb1c2b89947929919ff0dbe7be95f52bb8024ec0885fb690b868f78e5d7ae08
Date: Sat, 07 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673131287
