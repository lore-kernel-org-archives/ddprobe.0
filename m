Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F98E365A03
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777026454; cv=none; b=hR7xKgjsTUF6+4y5zz1RBcznFEGXtsrw0ZxVNAuLWmKWDc7FwHx7j/DLJFm465RJatgYWXU+aLjKftafMWx7DuNWbevLqLDbBUExmHKK4p89g53cqpFaat1vrOQsdTBeObBxTf8cD0V2lBGYphSDxq0vvkJy3NpBhICd8I/L9Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777026454; c=relaxed/simple;
	bh=Rw1f/PBnrjOPC8/FB0tnKwsOcLSuKEt0omO54LW2AfE=;
	h=To:Subject:From:Message-Id:Date; b=VCvkEJN1QU0zyzLau0uNneGBTF9Z5E56UAaM0vhcyOwcAIvdnfJx29dyI56oawBrNFITM+eVbOVCptkthLsf5FHs/9APTdY8Dng53zV3irBtI1Ubv9R0FqNaJvBt/frRZ0BCO/aFabJy5vLAIXgzpoI7gROVHfMt+c8wQq5Ej08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vd3fPdis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vd3fPdis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DD7C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777026453;
	bh=Rw1f/PBnrjOPC8/FB0tnKwsOcLSuKEt0omO54LW2AfE=;
	h=To:Subject:From:Date:From;
	b=Vd3fPdis7HnYA4Bw+wv/YJnkfqxTP4a8r24fnXtGV60Anee9d5pNEFTh7p31M4gXS
	 jYNk1JFB96QhHxBSHa6FgZ2csdFg2pVo9sn7xB8eG8bBGvAQ8rM3RP9dOnsdLpmpaQ
	 hHRjhef9tynHOBt2TauEZz7Ywn17x6WYIZsFbQOZmBGEiE3uEoMMTUENv4MIjP5WlH
	 VOJ9KgU/c+EOQ3tQmU0nibs5ujmYvj16k2a0GxEUuFDeQKdcExroTfMekzXlMgF9lH
	 9NQVcKNQvuy8LOF31hL3c+27yfvZNWHidx7/mhAWgIQLjW1opbW5hn/Zdl/qspJ56Y
	 ghMAH0qvfoU5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D88FE51FF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702645368.25029.9432503729163711921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5ca7c802a37298a1358e614ac8834d3a652d199e984f32240fe887a39da9a5
Date: Fri, 24 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777026453
