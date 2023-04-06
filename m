Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49995E4DB
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BE2C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680823085;
	bh=V74UOlQnz99OPSNCYAONNamiKMPG7Eh5zD1ygo3UL7E=;
	h=To:Subject:From:Date:From;
	b=CTUciw4clJKiXorEZRJXIR4LonZkU2c3O4tt79NbhaanY9DR8hl5GAHlSOzoxgdKd
	 Dk+mqKaJmwYqGIA3lzUgpBdXa+b7aHkQOAJez3VzPulnunBrmxKmvVwK7NZd+SoEWt
	 WoRcfVhrd0PZD9z4dQHSonsKwoXmlO/LK7piK2F0aK1m7COQw66ymQ8wyJK8eoZWMr
	 cY3e4JqBq4r12x+Qglh4AE7uJuaD9glidXIDW8MTH03ADzI+wWJUhEQNudKeymG9qp
	 fHj7EyHlWvC+erfxGRzol6HsQ9ZkDMIy0g12zSI08uGsm/gopUF7Bv2w5Y+aoKHUMV
	 jPjZoFUXaDmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5FFC77B6C
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082308579.30339.11695565594026418579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2033b4383d4263677c56f51362790397965080277bcfa131a616cfec38418083
Date: Thu, 06 Apr 2023 23:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680823085
