Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5869185F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81169C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668508254;
	bh=y8sq2Z+UoIjvTYcqyzH3WWAEzFWLsZxyIUJijVLSoLU=;
	h=To:Subject:From:Date:From;
	b=AVX8qD0MU7Mud/V3By5W+4XQ8QtKybyFadhZo1RQjPWOXVMeGrXqQDXGBl2iD2wQr
	 hivlrscpDhc7VEZClwhuYK4oCOQzSKnxq7xctmbWpq/HQrmh8rGo6TUXsz3HgeHsr6
	 9hyto5nJMy8f9wbj4v+VUc0msQMa8Wv2i8tA5kgWhhSCm6Rk9ywk3upzRyxnunK6gv
	 B2bW7jqD+pZchJv/HIxkc6b9mvPCVXJeY9SOa2kJKstiMQ3HdppTy5CcLbMCoA97fB
	 GxHnzkg48uOzjqCxqcvu99AeL8UBUUvyN107fpRJGqxOkz08Zu5n6ARZ37ZWqEHMXn
	 JyL9lezqAsNRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB93C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850825436.8701.9656073634371818720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5aab09bde8213979edd0c3e3ff0566bd6e5ac21bd27f17ee2b5ecec0de27c7e
Date: Tue, 15 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668508254
