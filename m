Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE1C33F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E416C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665091853;
	bh=2zgGf1dFcaibIqeAnjPxI+sAvlsrsy0WDL4Q21dRfhY=;
	h=To:Subject:From:Date:From;
	b=EL37JhsOUsTIu04IUoLGgDi6UV5Q8QqyOTdzUZb6DYsQzZXMJcsTUjqU0rt+QrblW
	 mbMpdhjigle5EjZ/KqWCeoAUj/CcqrQuAb5oYDDq5NVXkyDP579lvQn1ge10wRro9V
	 AAwL3Oj3Aja7/QEDTPsAcHxEhMkeuS2iQWRx9cmI+taJDuj/A5JIi2Z6ZdLnihK1vx
	 n+OMWO8ZZTmJXnfEOfhTwiu4J4el87dmsFjRjTqo1SvNfJbQcqdxhEBYIKQ0r1qT70
	 9D7+FNnUEwg1MZvNTkKDg2dj8P4ltObmhAPQFA4VxFMaIOYdyAtbCfXxH14SuYlWA4
	 wDei4zv1fFTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D79C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509185338.31862.10595872653968866750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5695f716b76ca23fa5e8a613b71fef99558f8456f2333af38ee49b1df0ad7b
Date: Thu, 06 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665091853
