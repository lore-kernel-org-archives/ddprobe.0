Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCEC615A9
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFA8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661604652;
	bh=RxmyFC/QjBDZWQdYNEx+qezpJemEmKsTCJU+Crekmcs=;
	h=To:Subject:From:Date:From;
	b=vKcjgHYucPxQKMwUjZgrt0spOmPNKCIsEGndmL+ysWtkNQtu0ZlKVBPbkznuxSD4z
	 kSJSm4fXIvhTLNEeR2Se5e0uJReg7Fy7IxmRIcsbb7qN88iOjxFnuyhBITSm5bx0gO
	 SgZRYXdi/8iA3T6bEHGbHOjDMZs0vhd5CIKqYBfL/exU4HYbNRGdKMLmV5RrhO7oHj
	 xngCKPet4gXEP16ta67I0ypptGGWBytg0TfH0c0DS4vto7hb/3RP+DcdMHC5cxppna
	 pP7LtGNfUWEt8GxD/BoaZfbrfSmHe5/E54QQ0Q8vl5c8D4F05ZwVzQDwjo+1nHAdKl
	 vmeqHCG0RJnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACBDECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160465236.21669.7436704454830688127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eed058f474fa9e10cb35e7a93fc6a811a864dd78546b114e6bddccdd37067f6
Date: Sat, 27 Aug 2022 12:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661604652
