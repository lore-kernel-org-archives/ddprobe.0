Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C22B1361
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D9CC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688268848;
	bh=0be6VjNZNPrJUxun0WxEeP6EJqSShDDGUPciBUydHqc=;
	h=To:Subject:From:Date:From;
	b=cRoM6wDlLjdEDTlQSYwXf/MqBAhLWEiONxWtHu8far5sOyczJQjOs6K/HBfwuQm+k
	 9/9N1p85a2Ejx4PSqVkl0S+jW+d37OWAnf/maAhS4O2rmPZZ6ZHknO/9eX85laci8/
	 KD2NG4AFACvKwE8mOdQJhUcTonCNM+bu2uZByBovpLraWLy7a80/fbiWjUpHuY4lyk
	 aNKL8uNjS/XbXRijYq2PkXX5QtcbruIbRF2kgvh3fm1lTP/OLX8WN17CWo270SDFkw
	 cK+G+ijHB9jAyn1G3YvRbOuIJdoAqwxMYIewOpgu1InDpT+n0gyBb+f0rpRkPgX9Cc
	 AOe3gotme9e5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D36EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 03:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168826884875.24877.17784950088203336380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b082f987cc20ed650519e81c45e7bc4098641e2c745eb15c9459c7f78013c426
Date: Sun, 02 Jul 2023 03:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688268848
