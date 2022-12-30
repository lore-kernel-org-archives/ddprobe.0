Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46141C04
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA78C433F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672404087;
	bh=xLp1ry//+beFUzyzqwJE8/SiIhdGmNHg1SAkuAPN6OU=;
	h=To:Subject:From:Date:From;
	b=nBAux5u8nd9MNP5GENoiH/uQ81wJdOxnzSVasJN1/Pd1fYiQjiUXF5Ekr89QTQo2s
	 qpPg7G4P7o04HGM9+m0I9kkwOLDDGGc7d1cpcpPvKJ2KAHJey8MMM/x/cnYUU2tOc5
	 Gj3sQL8DLExZvbsQJH3e8/dJNbdm2Q3h/NGLSLg0FmOnKfxthRLLCcvGDYVJefHsdN
	 ZJ3RHtg2Q6ExmjN41J5abUy0RgBq3N1lQGqJXIbxnfPPQPaYZT2599a7KfgrFgMrRk
	 rFNivzFQRPItoI6/cFouPXU6H9HDnQxyF6AYt52xOimRfapC8GiXp4NtMGvEdpXTM0
	 y4aWj2O4dPzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A8DC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240408738.7572.627498379983317025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b0cffbcdb2f013d72ce5e6cd799a8d7974481278a4a5b4fb9ab326131f2634
Date: Fri, 30 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672404087
