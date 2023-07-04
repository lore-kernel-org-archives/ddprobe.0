Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E97D620
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1242C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688436368;
	bh=Jzj1YxJ8SpiRyqQriY8DKMQJ9Sj2kOCsvC/+Jv2/Blg=;
	h=To:Subject:From:Date:From;
	b=TZXqgdm5OSxlOuF6SsSdlw7CXkHhDNfT6KC4fI6vdrg6GFoRi31LEiTMzEJ4Xw+Oo
	 /0NUXTirUzvKu6S/Hi12gHDEIJT9VLC8nmagwcYZjOaQdL9sEAqrGdlY3SW+dGkCfZ
	 0YQb9uD15PWGo71gM8NGIU450/UZKTNNK1UMKvkoW+gc6NyMM2VFbtsJQ6fDq2eG/7
	 I8+vKfXn7fm9tRgZcYzrG0yFNRJtJ4BWd88+V2STp3vkAhgg6q5zcB/RSiB/X+BHR8
	 8hPxz8zEqCklQOnb5HAQh2WPrUEFvWskHfJ3q/YZpckXuHkbI9QuL8DV5wZBqOZkX6
	 1M1zbt8Rpb27Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B285FEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 02:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168843636871.25615.4465004789552630185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ec4fd30890d3531b8ad8879eec31fed8b56c9353b3ced7f9cdd49f65e302e4
Date: Tue, 04 Jul 2023 02:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688436368
