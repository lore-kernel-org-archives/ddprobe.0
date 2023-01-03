Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B2D8F6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84173C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672779687;
	bh=MDVCWZkzT5E+ZIqeq4VLJoQZ7SEkVeV6SbiVShDEPeY=;
	h=To:Subject:From:Date:From;
	b=T/b/d8A44S39dX2xRl97gPzLJJYTFV0X8iUGP+gr4yaAyk3d2yYmjdN1S0YbYlQfV
	 zlF7X+ug20d1mBOudGYngV/1GJlywEEWUpSkrfHepF7WgyA8aGT+Hux9ByK7W5mGCg
	 Gn6nxX4iHCJFRwL38DV7mUtoEMiXl+1keBKVomReDI7qUIqV/WglK4hT3q9863rmYB
	 lzQluABwKCRpIsog1D+XDHmYJeEXCaR94I3y/ST6dTXh+MKzJvYzoyDTIk6N7qFMCP
	 96Sti73EIVrDMXSGpQlMEcQ1RBjoaFi2Cgmgzn3supncDvfzdqWq2AXzlJWR7rgdcG
	 cn0bkaBEZ8DUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B7FC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277968740.25069.13841814777331410726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4222fb18740a785cb4d66b73382cff1a081a7c1159c97a3843ad3c13a3d7a55
Date: Tue, 03 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672779687
