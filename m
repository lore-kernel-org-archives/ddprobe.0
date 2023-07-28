Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AE710792
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0ECC433CB
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690536728;
	bh=GT1vC+jdIWZs6F1WAaDhbJcSHcSwGxieqhKbd88QvuY=;
	h=To:Subject:From:Date:From;
	b=d5g+bFAFIxfAZYjrQLi8kN1M1yneB0Tl15hLMH08iilytBEFUC97nQUXnjgvTOBOO
	 pkPPX/Z/x9lAzbqYEZMw9ubYNQ+ifiQkc3Jyknb0d8tSlWtivXAlOiltKLt+4Ei8Wi
	 IFeGymj3JhSCtuL0l1QU1rvA+bG2942OKH4Om3bBji266rrvT5VfH307Znv65Zovlh
	 xnaT47s0h8ndR8fWiIn2ZZqwjSrzZsAKRb43cYeGhiUDXtQN9QseXo1In5f5xWnyeD
	 G4iE27BJtLu+WpN5Ggrwvpk7nO/NAEBM2KOb3r9v9On+VhmYIxeVRlWbQGVbHxn7Iw
	 CJ8U5kDRFlROw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEADC001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053672870.29543.16490474871919658735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9c6483a9c265d89bbe1fd77b6a965ad6a9eada99b07a06fa9d5a988a669858
Date: Fri, 28 Jul 2023 09:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690536728
