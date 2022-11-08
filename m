Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85CF2F39
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D06EC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667884254;
	bh=kKEBitYPGYt2MYWYH9uCby+a2EmFYFCuSTp/wS1mEMg=;
	h=To:Subject:From:Date:From;
	b=d4qFoygat1/R7Nu81VIlh38ZxMWPZ1t8beS1CPJQHa3PYxMVKKuxHnOST6blQ6ucS
	 08dH+qA+snNNH6JBBMt264ydYo+U/0H514uXCF/Eim6rnZiywvrEbD08q+UbEgN88Z
	 xsyNyWpaUwnbXPSQRiq8NnwIwLiUHsslOKYlXz4eFMEsSVINcCaOfaoC6GQOIKCOPN
	 osEUPqTWnd9y2x1YB/iIUqMJk6mJBPvUYT0qd6bR7kIBJDB5+TRBeBvA7eQbUbioKH
	 GK9fLw7kX7+DqugnJim/14LSch7IT3IEHozGg708QTwNmDCpetcLKB9dcwalVVhAsA
	 gbyWx+sQMoqnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C7BC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788425434.26870.10694827758257577244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfda1e99f0e5ddc69719d8fb02c84fa0777e4b2b25b5edd23aa5c21260ec4a44
Date: Tue, 08 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667884254
