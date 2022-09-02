Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEADE2914
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7065BC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662145253;
	bh=ROT9Tjn+nizbwtwVGKindHLlFfXUOwlpLs7rim8Sjcw=;
	h=To:Subject:From:Date:From;
	b=rFQFscrKUj3TvOvhORHgBEj0FJ5Q6TJiMwyfTjWqvT4MAMEoeNAdEQIV5rC29/0yB
	 e5PwmofMGH6lYPuR4VeNuG5kFAZcku+tnM2Hwb9d3GXR7fMf2JFVq5lY4HFKF3mVY2
	 fnvd6wkcpxtqlI7CWXxkvKaeNCbprrN9xbVH59yIFg9NnC660HnIeBbGQFAw+PLQEs
	 flPDn3tArSw8b7Q5qgnjMGi+jSRL0TSkKYN8sMIVjrGIHPZME57ecAjB/NVNMpodK6
	 qK6zIaEy7kad8sQDsvoVD4otWeoXL+2N/paD1RnkCWkPKo0DdZm4mj0eqVC5nH9URB
	 6XeZDYKYQL3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2F3C6FA82
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166214525336.21358.17217832265754979093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c36f2f07f49b577f8af83429fdd22984ceffa0db89d06acd27930764e3ce34
Date: Fri, 02 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662145253
