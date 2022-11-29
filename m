Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E03650
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB1BC433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669708254;
	bh=6r+uZJqkzcoihCnOICExzFCRALUAdMyJdoLu6WhPhHw=;
	h=To:Subject:From:Date:From;
	b=I5GJEiqY5cj+1XmIjoNtYlKG/Piia8OaE4dlOcHjmz4JSrI5geqYtAQEvZcc4B0Wb
	 RRHAquE6w4h9bfsqc7K/HRLa4ltJNKzhyXmISw8Uns4jHoWEYMQ3sV7f5h+9agPe+7
	 DNCJLnN3eDbj8GXK1SjPQMXmDQrekyLHn/uGKFJHDxHYctiIQAPAQJplfh+0KlqMDm
	 9Xi/4RDR/mgWhT/b/m9N19h8JdKh485zbTLJKhjdb1bL4/R81+RttBwjqGd4PYrmMU
	 +65RewwYrlV9EjpltJlg5eno1DzkWI2BdkZPZSsusfq1u0NznD0Ochd29jnE3Quw6h
	 vzVJ2v+0akKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510C9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970825432.3400.7920762980037920938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d31df2919fcc53bf3c5e36774f53efdbcadbf355303d3dd4c2bbad40ad641d
Date: Tue, 29 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669708254
