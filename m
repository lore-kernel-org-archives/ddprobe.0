Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48CC291D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F1EEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674041487;
	bh=mdG5yX+IuVgKTYBi0/aiUTQZmpn9k8ihu34xr254Dog=;
	h=To:Subject:From:Date:From;
	b=hFms+JqWD/ylvWQ21atnVJzhV7TfGQ0PMxcpAqdwKdiWM3F50NRjJCRG8drYzj3Dy
	 85YQQog/6ahP2EBC0J+RNojOt8FOSmti4WV+Hh6HtIQBzO9iPzrk+XbC/2hb2HQlvv
	 Eu3yVXcIUlpcOo6SMUL1V6b6LuMHyPMYZxV9kRQq/b4PyAYmupWu1mTNPk4tC7/oIE
	 SwN1cRMYQx40FxMYy3v0bkAwnnW69Oa4Ydt/TMqcgKlPX/NxlrPD8FhEdWLE3TaCs/
	 W/xW+OgqPDk2JfFw/1J8cI/6GuMxhnOUi5XJLJd5o1iU4QovunNXkgKOFEENp2VyRC
	 TmXfQ1+IkrrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74738C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167404148746.25168.12317382551804161282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c344aad2444c6a40a5eb75c897741adbc5437019f52811fca3c8f905c19cf295
Date: Wed, 18 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674041487
