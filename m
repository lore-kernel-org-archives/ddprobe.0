Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E6D7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A48C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663149053;
	bh=Rv+gUPVgwGKRnZosC5w5d3oKrYYaH9A33zK06eP5AXI=;
	h=To:Subject:From:Date:From;
	b=dtP24N/daM4n/xCIbHxxmHqAjb3ahPkK0bocom+olbLI7iIxCTN2uQCT5rjPqHKoz
	 8hClrOrUu3YM49gyLkr1ivcSwxpCoxHoP6JCjmPyjCdfGEyzmkPDsaJP0Uh01MjOfc
	 nTHIEFYEdNRwbFyO5+m8YNp9JvCvAeGZXMwFRijwWyEkgdyLtYyvufydgd2TGjvkeN
	 QfjLY2nC+s91gSlAK+jFSGLc+BpfjicSzIYbFdjpu2W29M9VGsw7jHnqZQs20ptKeC
	 hULNxDrr/7NM2fl3Gl9+/ws+sCflZCM1bK1PmbKSiyyZUK+j00QYNgbw4JX8vPOATm
	 UNm5hmP3yqoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52231C6FA86
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166314905332.20338.920282357567165548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b585dda0ae1644401357a529f10e6bf9b131e23add9ec7b485f1ed82d88e8677
Date: Wed, 14 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663149053
