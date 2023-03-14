Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7C915AE
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D815AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678759625;
	bh=73AQzOkbGQePXKUt6slSiO+ADG8F++M12sjXb2Zelic=;
	h=To:Subject:From:Date:From;
	b=CjHAzVfYdJ9m0FCeIN8ZSbpYBVQ3o7EizcOXTg0Y2p5jG5e6IgJRKmXJ+1vZFU0sc
	 aQuxidDec6Cj6j5atxqQPP4j3TAHDyGtXF7i0V0rjVv+r02+TEf3i4dkzSKpgRuttC
	 0dUE3us5UqrO7adHPqaJmjLFmkVaWJkxDB0iJV0YrhVr4hmHwtvr4v4AMEKLCIk6Bu
	 L4ECXZWR3XDe2lURhBeRoUYhsPu8+xN5B7+9/+nTdIF4SFotxi0eUJi330jDAE1Q9s
	 EGL83JfmK/ivW2wJ534GMI7ue+P0GdkZKR74uo+qHeqAN71BHujfd4JDCfuzWxPxm2
	 dZjwlWNkEhd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9451C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875962574.14212.17741663090052423861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5069d5709a08ef2b577871d7c6d369740edc1a0792558602cad62cede4513333
Date: Tue, 14 Mar 2023 02:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678759625
