Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D852F320B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8891DC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672950687;
	bh=/vOeS+XlgAWh0ue1+FzHq4Fl/IdeDivhCll+Eani27o=;
	h=To:Subject:From:Date:From;
	b=RojCRw5gKi9KixjhfoIn/6CaYO4Nj0EZOsK/K+DtQ3uxHiMl6ZVU/CDNzQwm4lRch
	 nI8F3z384UEEH+e98B45bDqftGzwy7SmWKli6OxbYaziFOc0Nlvy4I5aOgtZu5evF5
	 hi9v/8NeUYmdQmXv/3uzo+oqZoINtYcRDbl5eoNha62PyYTVC6zZy8Lui4e4eDFnyS
	 j4AA32sGqO6rFtu8aob2tJI08hdfK5AWSgMmhjIfQhmrjTTSyK040YNG/Um0wyEXmz
	 80SC1AxX00itAGfVuWRZDqY25mntoE7cfOlGTq2u+sTy5ex/JJYRMyCk0umU1XIDe5
	 OwEX+E+1ek2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624C0C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295068739.6073.15080841527482290816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1b71dd8dc26df8ad1326052cd7f2ab6ca0383112a99b2b4cbefe2e035181b3
Date: Thu, 05 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672950687
