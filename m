Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9093D60
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D177C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666379453;
	bh=2/3HOnOscF14Wv3ishlZLXVq1r3O28/hkPuxoi1ELpg=;
	h=To:Subject:From:Date:From;
	b=KgIdygs0ubkCvAkVPPEqStwZtV/E9xpB+DnlaHH9b0YhlMPRG6wL75MZyqFVRgCEZ
	 wVlVUtHNsiFJiRbtAuy0YUmS8AgVDXgdpiBqTP4i8gC+ZWHjPTgBA0GK+gP5l8BBLZ
	 d0SKVV8xmbU1OiesASRXH5ABcpXU0Ful6PEWR1v1wP0jBZlRcWVwsGerY2HPFoU63Y
	 9tHGoajfK+C3B4fx5nCa+I78OHwFRKCyvu952O035IQdODnGiL507PeotxmYl4rg1P
	 U7Osc6ek4M/LySLC/wxvMK0PNJKlqZECh1ip+yKZZBTQ12oNTFbNerjWDlqVBzYqDv
	 oIjaNDdUG9yBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55ADCC38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637945333.9245.14213782767262366168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a369838ed7718d8f9aa689e6cdb1afedeabda31c15d45e0cb9bd9cc0a8aada8
Date: Fri, 21 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666379453
