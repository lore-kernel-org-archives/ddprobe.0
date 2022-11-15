Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F2515A0
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C523C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668544254;
	bh=qS49FFw3vO0/QKqu9P+Sgj9tAf9kBsrBLePz5UoGKU0=;
	h=To:Subject:From:Date:From;
	b=XkkA7CqAPi7r6HDujQSEegASrKVqzsMCwu+3hswlq845rUcjx/rS5jmcXsLHowwqs
	 FXv9BHrCg8c1fUuD7K8B0BDeh/cAb4zwGKL0WeqrR+2SxqAbYAKoMqx+z0HRypgjoL
	 dXomZudYKmJ3wuxrP6drJsS+6S9XZXLO3zxoD9VKz9/JcGCoDrLLI1v9gFTtJBcrkU
	 HB/5AwxQ+bi8/FI2RQ0cZK5IaLh7n4lKa7mREJe0TQd6ZE8Smgt6yqooczht/XYKqs
	 m6Cu5deEBsRMoOrgVE0Qp1Mfp0iL6FJ1CeDNRoHZnwwS6i3OMiN5KPrKDhg2o/Vxoy
	 0h3orNxs41dZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0DDC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854425437.31353.13694617957064816057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fba544c3b47bb385ea9b77d158847b531ef8951b5f454b6a83990621a90fe05
Date: Tue, 15 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668544254
