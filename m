Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DF9320C
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9BFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668210054;
	bh=rBTbqXmxcW2WeI7R7LX+O0KaaDjAJdE6aqOqjFWSdKA=;
	h=To:Subject:From:Date:From;
	b=aOmc9dob7vIkfkh/+W40sCnbg5EUXfhcO+uqdKLb7PLnyOc6+P/PVXAGjlcErhQ+w
	 UTpVkfKWtevEelmN7bsREd5d+vWb0wVAdNqzQ1p6Yymh1FqngjTZyXsseu2vfTDzWd
	 Db7hvs4C5qP6DIJy6wkQGorEFyYWGa8QUmd88lP07Y+XHrebKkIh4RUY0mkW+N2x52
	 hopIrUIQdZGMEirQd5S9M9pfIBVzkcfvsv//Kj9/75BYTClQcVuAfVde+Beci9iQ76
	 b0Jqpdls5UxDFvML5EDGvOrksqYKsgFxaJrFfqUmdVCY6w52gKWOnc8qyTuQHtZQGm
	 PczueGTlrKePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628BAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821005438.30095.5381369691534423068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f596c97ec4f65cfff8f624619e1fb8671d42867d397c55fa24d5cefc6ae9f3
Date: Fri, 11 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668210054
