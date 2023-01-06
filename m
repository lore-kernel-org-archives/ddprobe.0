Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FFA620
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83214C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672963887;
	bh=sHnYTRYcFeAZjVlGYgU7kg60hzSQrzDtZLfmXj/miEU=;
	h=To:Subject:From:Date:From;
	b=j94Do8BqC62mD7IiW0TY4aChRmCWPzBhd+trMNXNLeSE0YNbhrfTYs8rw9ylNFuwm
	 5aE/lxkaI2KqKl6IWv+sjAE0k69HeoCyrCNSgV7yWeFNnorRs19bKmFXEeEyIhdDss
	 9/aiJ8oVElBdtt9+CcgTO/FEThj4u4FaDOyHnRoh966QasrVj37FQIzWpUNmLnJ0DM
	 Ags1FRQHI4btPHszwe5/ft/CScBPhD60t5qG2L2b9mGZJ8sDU0HbPPPl9UVE9H1jtV
	 A4095MCRKjZ65Eg1l9d+h6eEg8zKYHToj4h5Ux1JdCL/z4tMjBFE4qyXrRUOZJS3Fs
	 Kv9CzXVyGrolw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60738C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296388737.18960.17316349809020314398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a1a5f1c28aa80de6dda546a4e9cd784a7538f00f020450cedabc6c4b7c37fe
Date: Fri, 06 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672963887
