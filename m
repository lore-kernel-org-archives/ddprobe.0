Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5E223B2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647409584;
	h=To:Subject:From:Message-Id:Date;
	bh=twB/nyRi2iY9CqlTdbJgdHPMA6AyWZsQHv2CHDxZNOY=;
	b=jvge2XygsJdSlvaR02h4UmX0yqLuYJUAqulDh/9yJll6m9Wt/Og3FOsHaqu9KINZ
	BTi3Iz8qmsI5imm3CBf/d49G0EDzq8GvZdABpZTKeP2xdSjdiDN5mSnxrs6U8Xb2Fc0
	+eeu6557fljdMDxMp1cZ3SjOghDznLpJ6mN24K6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647409584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=twB/nyRi2iY9CqlTdbJgdHPMA6AyWZsQHv2CHDxZNOY=;
	b=DMDOjalTXLuiyb/MF+QXjeX6nG+KHyXdeMr+AA+0lXJx1unGWjXRZSMFYOJhfRIh
	ci9lPKT+IMcuJrwJWDWZpoYRMvw5aVoHoGqNqVYIv22soGmlO3o7hAGKUc+k1oWcyC6
	+lb+KtTy0m4Z6gUpwn6vT4iEeRolSCPkCu6YT0vY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91435a56-8c730e8f-ec5d-4362-9c00-85905728c22a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45aafb41734ffe5f0954fd820342072032f65129a42821d4b8798312c103e20c
Date: Wed, 16 Mar 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647409584
