Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F7C230FC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 11:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0BFC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687520588;
	bh=L+GpZcSa0PwQpU9TPsfcPA4jshKV29BQUMc0IyYd8mM=;
	h=To:Subject:From:Date:From;
	b=ikvqcfoQee4vsvYtTZgRCdX3Txlzh9XEmZZQj8uAERzoxhvfkjHTaExinbx32K6MZ
	 PuLH9FVvuxk5LJoKftHiqcmdnF4C7riBAX3MtDu2xX9ey/EaA6Cr2lGzcgJ5L2+Brb
	 ADw4kjAl4zO41Ohr+qlBuAPVTelJHoqngRyTFtzsl4GK7akvtNCi3lMgKGAu//cVNI
	 B7X3zjOzU3pKHVjY969MBdQywB6kJ6YvMXYJxwYrnmQzGuK8sB1uDy53JsZ8pqLkAg
	 OUV/awYrbOBlN7pubgLowWUSTpZsv8UBXFrZkvm9k93uIXrwAh5zfHtcncW8txe/Ll
	 hpD/OEkRAz/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAC7EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752058869.30601.8359574003788869461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88360f506186214394a1f13844ede457f8de54239a737b90c93f924967c114e
Date: Fri, 23 Jun 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687520588
