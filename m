Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBD410F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF77AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674788586;
	bh=BCpHPG2EJyoEn8Q72CmnfyRPNp0ONdWaJbRjDQeX2iE=;
	h=To:Subject:From:Date:From;
	b=l54SdvLguVEkRctb/GLIRlyaLIvttmx+39kmo/Fni7ehB9UDiNYCSVaHT+FKTJBZz
	 CrEPm/r/Kf+8LTrs0z1jLJSrJeZzeCZ0Ik+5P0wLbqNQp56QcG+zZHTCE/F9X3bL4R
	 uJiZHhcKQ9joAFSo4DH+dvZQTkETqSLXBut4cOe2ptDoIEDhvIQezy7EEqcjm6EQla
	 6UsYsENlKEoyfaW1Gj1anIvUPR7zbKHSU9NCjIftJeIMTs5OFlHaew8Y/OzpS4r4SB
	 OxYuI3vwsCs3zKmrWEpmPoIizK9aZ1GBBDMKjYuL5dbjO+K/az2Ayj+OYXwvl7VghJ
	 9cJM1BTcao92A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8110C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478858580.7853.8845928928399076259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5becb65188b97104d2bef8bc601e18a8b3cdf6d8ae70c2fdcec4bb8b6c10387c
Date: Fri, 27 Jan 2023 03:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674788585
